using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace Multiplayer
{
    public class Sheep : MonoBehaviour
    {
        public Grid grid;
        private AstarPathfinding astar;
        public int hunger = 100;
        public UnityEvent OnSheepNotHungry;

        private Node currentNode;
        private bool eating;
        private bool movingSheepAround;

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
                OnSheepNotHungry?.Invoke();
            }

            if (hunger < 50 && !eating)
            {
                eating = true;
                Node targetNode = null;
                foreach (var node in grid.nodeArray)
                {
                    // Vi vill äta gräset
                    if (node.tileObject.tileType == TileType.Grass)
                    {
                        targetNode = node;
                        break;
                    }
                }

                if (targetNode != null && currentNode != null)
                {
                    List<Node> pathList = astar.FindPath( new Vector2Int(currentNode.gridXPos,currentNode.gridYPos),
                        new Vector2Int(targetNode.gridXPos,targetNode.gridYPos));
                    if (pathList != null)
                    {
                       StartCoroutine(MoveToNextNode(pathList));
                       pathList.Clear();
                    }
                }
            }
            else if(hunger > 50 && !movingSheepAround)
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
            int x = Random.Range(0, grid.nodeArray.GetUpperBound(0));
            int y = Random.Range(0, grid.nodeArray.GetUpperBound(1));
            transform.position = grid.nodeArray[x,y].worldPosition;
            currentNode = grid.nodeArray[x, y];
            movingSheepAround = false;
        }
        
        private IEnumerator MoveToNextNode(List<Node> pathList)
        {
            for (int n=0; n < pathList.Count; n++)
            {
                transform.position = pathList[n].worldPosition;
                currentNode = pathList[n];
            }
            
            /*
             När fåret nått sitt mål
                1. Då ska den äta upp gräset och hungern ska få ett
                maxvärde på 100.
                2. Gräset ska bli jord
             */
            
            currentNode.tileObject.tileType = TileType.Dirt;
            hunger = 100;
            eating = false;
            yield return null;
        }

        private void CountDownHunger()
        {
            hunger -= 15;
        }

        public void SetCurrentNode(Node node)
        {
            currentNode = node;
        }
    }
}