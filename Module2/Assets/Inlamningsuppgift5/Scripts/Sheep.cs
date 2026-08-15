using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEditor.Searcher;
using UnityEditor.Timeline;
using UnityEngine;
using UnityEngine.Events;

namespace Inlamningsuppgift5
{
    public class Sheep : MonoBehaviour
    {
        public Grid grid;
        private AstarPathfinding astar;
        public int hunger = MaxHunger;
        public UnityEvent OnSheepNotHungry;
        public TextMeshProUGUI sheepInfo;

        // Fart mellan tiles
        public float moveSpeed = 1.5f;

        private Coroutine movementCoroutine;
        private Node currentNode;
        
        private const int MaxHunger = 100;
        private const int veryHungry = 50;
        private const int noHungry = 0;

        private enum SheepState
        {
            Idle = 0,
            WantsToMove = 1,
            IsMoving = 2,
            WantsToEat = 3,
            IsEating = 4,
            EatingFinished = 5,
            NoHunger = 6
        };

        private SheepState state;

        void Start()
        {
            grid = GameObject.Find("Grid").GetComponent<Grid>();
            astar = new AstarPathfinding(grid);
            InvokeRepeating(nameof(CountDownHunger), 1.0f, 2.0f);
            state = SheepState.WantsToMove;
        }

        void Update()
        {
            if (IsNoHungry())
            {
                SwitchSheepState(SheepState.NoHunger);
            }
            else if (IsVeryHungry() && state != SheepState.IsEating)
            {
                SwitchSheepState(SheepState.WantsToEat);
            }
            else if (state == SheepState.EatingFinished)
            {
                SwitchSheepState(SheepState.WantsToMove);
            }
            else
            {
                if (state == SheepState.Idle)
                {
                    SwitchSheepState(SheepState.WantsToMove);
                }
            }

            sheepInfo.text = $"Sheep state: {state} Hunger: {hunger}";

            switch (state)
            {
                case SheepState.NoHunger:
                    SwitchSheepState(SheepState.NoHunger);
                    OnSheepNotHungry?.Invoke();
                    break;
                case SheepState.Idle:
                    SwitchSheepState(SheepState.WantsToMove);
                    break;
                case SheepState.WantsToMove:
                    SwitchSheepState(SheepState.IsMoving);
                    MoveSheepAroundRandomWalkableTiles();
                    break;
                case SheepState.WantsToEat:
                    SwitchSheepState(SheepState.IsEating);
                    SheepGoAndEatDeliciousGrass();
                    break;
                case SheepState.EatingFinished:
                    SwitchSheepState(SheepState.WantsToMove);
                    break;
            }

            sheepInfo.text = $"Sheep state: {state} Hunger: {hunger}";
        }

        private void SwitchSheepState(SheepState newState)
        {
            if (newState == SheepState.EatingFinished)
            {
                hunger = MaxHunger;
            }

            state = newState;
        }

        private bool IsNoHungry()
        {
            return (hunger <= noHungry);
        }

        private bool IsVeryHungry()
        {
            return (hunger <= veryHungry);
        }

        private void SheepGoAndEatDeliciousGrass()
        {
            List<Node> pathList = FindPathToNearestGrass();
            if (pathList != null && pathList.Count > 0)
            {
                MoveToNextNode(pathList);
            }
        }

        private void MoveSheepAroundRandomWalkableTiles()
        {
            Node targetNode = GetRandomWalkableNode();
            if (targetNode != null)
            {
                // Använd A* så att fåret inte går rakt över en stone tile.
                List<Node> pathList = astar.FindPath(
                    new Vector2Int(currentNode.gridXPos, currentNode.gridYPos),
                    new Vector2Int(targetNode.gridXPos, targetNode.gridYPos));

                if (pathList != null)
                {
                    MoveToNextNode(pathList);
                }
            }
        }

        /// <summary>
        /// Väljer en slumpmässig, gångbar tile, inte sten
        /// </summary>
        private Node GetRandomWalkableNode()
        {
            var walkableNodes = new List<Node>();

            foreach (var node in grid.nodeArray)
            {
                if (node != null
                    && node.gridXPos != currentNode.gridXPos
                    && node.gridYPos != currentNode.gridYPos
                    && node.walkable)
                {
                    walkableNodes.Add(node);
                }
            }

            if (walkableNodes.Count == 0)
            {
                return null;
            }

            return walkableNodes[Random.Range(0, walkableNodes.Count)];
        }

        private void MoveToNextNode(List<Node> pathList)
        {
            // Stoppa en eventuell pågående förflyttning så att inte två
            // coroutines skriver till transform.position samtidigt (vilket
            // orsakade att fåret hoppade tillbaka till startpositionen).
            if (movementCoroutine != null)
            {
                StopCoroutine(movementCoroutine);
            }
            movementCoroutine = StartCoroutine(GlideToPositions(pathList));
        }

        private IEnumerator GlideToPositions(List<Node> nodes)
        {
            foreach (Node targetNode in nodes)
            {
                Vector3 startPosition = transform.position;
                float distance = Vector3.Distance(startPosition, targetNode.worldPosition);

                if (distance <= Mathf.Epsilon)
                {
                    yield return null;
                }

                float duration = distance / Mathf.Max(moveSpeed, 0.01f);
                float elapsed = 0f;

                while (elapsed < duration)
                {
                    elapsed += Time.deltaTime;
                    float t = Mathf.Clamp01(elapsed / duration);
                    transform.position = Vector3.Lerp(startPosition, targetNode.worldPosition, t);
                    yield return new WaitForEndOfFrame();
                }

                transform.position = targetNode.worldPosition;
                SetCurrentNode(targetNode);

                if (currentNode.tileObject.tileType == TileType.Grass && state == SheepState.IsEating)
                {
                    yield return new WaitForSeconds(2.0f);
                    currentNode.tileObject.tileType = TileType.Dirt;
                    currentNode.tileObject.ChangeTileType();
                    SwitchSheepState(SheepState.EatingFinished);
                    yield break;
                }

                yield return null;
            }

            if (state == SheepState.IsEating)
            {
                SwitchSheepState(SheepState.EatingFinished);
            }
            else if (state == SheepState.IsMoving)
            {
                SwitchSheepState(SheepState.Idle);
            }
        }

        private List<Node> FindPathToNearestGrass()
        {
            var grassNodes = new List<Node>();

            foreach (var node in grid.nodeArray)
            {
                if (node == null || node == currentNode)
                {
                    continue;
                }

                if (node.tileObject.tileType == TileType.Grass)
                {
                    grassNodes.Add(node);
                }
            }

            grassNodes.Sort((a, b) => GridDistance(currentNode, a).CompareTo(GridDistance(currentNode, b)));

            foreach (var grassNode in grassNodes)
            {
                List<Node> path = astar.FindPath(
                    new Vector2Int(currentNode.gridXPos, currentNode.gridYPos),
                    new Vector2Int(grassNode.gridXPos, grassNode.gridYPos));

                if (path != null && path.Count > 0)
                {
                    return path;
                }
            }

            return null;
        }

        private static int GridDistance(Node a, Node b)
        {
            return Mathf.Abs(a.gridXPos - b.gridXPos) + Mathf.Abs(a.gridYPos - b.gridYPos);
        }

        private void CountDownHunger()
        {
            hunger -= 5;
        }

        public void SetCurrentNode(Node node)
        {
            currentNode = node;
        }
    }
}