using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Inlamningsuppgift5
{
    public class AstarPathfinding
    {
        private const float InitialCost = float.PositiveInfinity;
        private Grid grid;

        public AstarPathfinding(Grid grid)
        {
            this.grid = grid;
        }

        public List<Node> FindPath(Vector2Int start, Vector2Int goal)
        {
            ResetNodes();

            var startNode = grid.nodeArray[start.x, start.y];
            var goalNode = grid.nodeArray[goal.x, goal.y];

            var open = new List<Node>();
            var closed = new HashSet<Node>();

            startNode.G = 0;
            startNode.H = Heuristic(startNode, goalNode);
            open.Add(startNode);

            while (open.Count > 0)
            {
                Node current = GetLowestF(open);

                if (current == goalNode)
                    return ReconstructPath(current);

                open.Remove(current);
                closed.Add(current);

                foreach (var neighbor in grid.GetNeighbors(current))
                {
                    if (!neighbor.walkable || closed.Contains(neighbor))
                        continue;

                    float tentativeG = current.G + 1f;

                    if (tentativeG < neighbor.G)
                    {
                        neighbor.Parent = current;
                        neighbor.G = tentativeG;
                        neighbor.H = Heuristic(neighbor, goalNode);

                        if (!open.Contains(neighbor))
                            open.Add(neighbor);
                    }
                }
            }

            return null;
        }

        private float Heuristic(Node a, Node b)
        {
            return Mathf.Abs(a.gridXPos - b.gridXPos) + Mathf.Abs(a.gridYPos - b.gridYPos);
        }

        /// <summary>
        /// Noden med lägsta kostnad som inte är en sten.
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        private Node GetLowestF(List<Node> list)
        {
            Node best = list[0];
            float bestF = best.F;

            for (int i = 1; i < list.Count; i++)
            {
                if (list[i].F < bestF)
                {
                    best = list[i];
                    bestF = list[i].F;
                }
            }

            return best;
        }

        private List<Node> ReconstructPath(Node end)
        {
            var path = new List<Node>();
            var current = end;
            int maxLength = grid.nodeArray.Length;

            while (current != null && path.Count <= maxLength)
            {
                path.Add(current);
                current = current.Parent;
            }

            path.Reverse();
            return path;
        }
        
        private void ResetNodes()
        {
            foreach (var node in grid.nodeArray)
            {
                node.G = InitialCost;
                node.H = 0f;
                node.Parent = null;
            }
        }
    }
}