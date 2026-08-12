using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Events;

namespace Inlamningsuppgift5
{
    public class Sheep : MonoBehaviour
    {
        private const int MaxHunger = 100;
        private const int HungerThreshold = 50;

        public Grid grid;
        private AstarPathfinding astar;
        public int hunger = MaxHunger;
        public UnityEvent OnSheepNotHungry;

        // Fart mellan tiles
        public float moveSpeed = 3.0f;

        private Node currentNode;
        private bool eating;
        private bool movingSheepAround;
        private bool hasStarved;

        void Start()
        {
            grid = GameObject.Find("Grid").GetComponent<Grid>();
            astar = new AstarPathfinding(grid);
            InvokeRepeating(nameof(CountDownHunger), 1.0f, 2.0f);
        }

        void Update()
        {
            /*
              Skapa ett script för fårets rörelse.
                a. Ge den en hunger variabel. Hungern ska gå ner från 100 till 0.
                b. Om hungern blir 0 då ska fåret försvinna.
                c. Annars om hungern är under 50, då ska fåret gå till närmsta gräs
                tile.
                i.
                ii.
                iii.
                Fåret ska använda sig av sin egna, customized A* för att ta
                sig till gräs tilen.
                Fåret kan inte gå på stenar
                När fåret nått sitt mål
                1. Då ska den äta upp gräset och hungern ska få ett
                maxvärde på 100.
                2. Gräset ska bli jord
                d. Annars om fårets hungern är större än 50 då ska fåret gå runt i
                spelvärlden. Den ska få en random target position att gå till.
             */

            if (hunger <= 0)
            {
                if (!hasStarved)
                {
                    hasStarved = true;
                    OnSheepNotHungry?.Invoke();
                }

                return;
            }

            // hunger <= 50: gå till närmsta gräs tile
            if (hunger <= HungerThreshold && !eating && currentNode != null)
            {
                eating = true;
                List<Node> pathList = FindPathToNearestGrass();

                if (pathList != null && pathList.Count > 0)
                {
                    StartCoroutine(MoveToNextNode(pathList));
                }
                else
                {
                    eating = false;
                }
            }
            else if (hunger > HungerThreshold && !movingSheepAround)
            { 
                /*
                    Annars om fårets hungern är större än 50 då ska fåret gå runt i
                    spelvärlden. Den ska få en random target position att gå till
                */
                StartCoroutine(MoveSheepAroundRandom());
            }
            
        }

        private IEnumerator MoveSheepAroundRandom()
        {
            movingSheepAround = true;
            yield return new WaitForSeconds(1.5f);

            Node targetNode = GetRandomWalkableNode();
            if (targetNode != null)
            {
                // Använd A* så att fåret inte går rakt över en stone tile.
                List<Node> pathList = astar.FindPath(
                    new Vector2Int(currentNode.gridXPos, currentNode.gridYPos),
                    new Vector2Int(targetNode.gridXPos, targetNode.gridYPos));

                if (pathList != null)
                {
                    foreach (var node in pathList)
                    {
                        yield return StartCoroutine(GlideTo(node.worldPosition));
                        currentNode = node;
                    }
                }
            }

            movingSheepAround = false;
        }

        /// <summary>
        /// Väljer en slumpmässig, gångbar tile, inte sten
        /// </summary>
        private Node GetRandomWalkableNode()
        {
            var walkableNodes = new List<Node>();

            foreach (var node in grid.nodeArray)
            {
                if (node != null && node != currentNode && node.walkable)
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
        
        private IEnumerator MoveToNextNode(List<Node> pathList)
        {
            for (int n = 0; n < pathList.Count; n++)
            {
                yield return StartCoroutine(GlideTo(pathList[n].worldPosition));
                currentNode = pathList[n];
            }
            
            /*
             När fåret nått sitt mål
                1. Då ska den äta upp gräset och hungern ska få ett
                maxvärde på 100.
                2. Gräset ska bli jord
             */
            
            currentNode.tileObject.tileType = TileType.Dirt;
            hunger = MaxHunger;
            eating = false;
        }

        /// <summary>
        /// Förflyttar fåret mellan aktuell position till målposition.
        /// </summary>
        private IEnumerator GlideTo(Vector3 targetPosition)
        {
            Vector3 startPosition = transform.position;
            float distance = Vector3.Distance(startPosition, targetPosition);

            if (distance <= Mathf.Epsilon)
            {
                yield break;
            }

            float duration = distance / Mathf.Max(moveSpeed, 0.01f);
            float elapsed = 0f;

            while (elapsed < duration)
            {
                elapsed += Time.deltaTime;
                float t = Mathf.Clamp01(elapsed / duration);
                transform.position = Vector3.Lerp(startPosition, targetPosition, t);
                yield return null;
            }

            transform.position = targetPosition;
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