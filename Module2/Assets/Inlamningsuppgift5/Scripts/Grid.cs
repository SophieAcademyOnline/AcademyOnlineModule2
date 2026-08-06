using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEditor.Timeline;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Inlamningsuppgift5
{
    public class Grid : MonoBehaviour
    {
        public Vector2 gridWorldSize;
        public GameObject tilePrefab;

        [Min(1)] public int grassAmount;
        [Min(1)] public int stoneAmount;
        public GameObject sheepGameObject;

        public static Grid instance;
        public float tileScale = 10;
        public int minTileSize = 1;
        public int maxTileSize = 3;

        public Node[,] nodeArray;
        public float nodeDiameter;

        private Sheep currentSheep = null;

        private void OnEnable()
        {
            instance = this;
        }

        private void OnDisable()
        {
            instance = null;
        }

        void Start()
        {
            CreateGrid();
        }


        void Update()
        {
            /*
             a. Om det finns mer än 2 gräs tiles i spelvärlden då ska får prefaben
                spawnas!
             */
            if (currentSheep == null)
            {
                int currentGrassTilesCount = 0;
                Node targetNode = null;
                foreach (var node in nodeArray)
                {
                    if (node.tileObject.tileType == TileType.Grass)
                    {
                        currentGrassTilesCount++;
                        targetNode = node;
                    }

                    if (currentGrassTilesCount > 2)
                    {
                        break;
                    }
                }

                if (currentGrassTilesCount > 2 && targetNode != null)
                {
                    currentSheep = Instantiate(sheepGameObject, targetNode.worldPosition, Quaternion.identity)
                        .GetComponent<Sheep>();
                    currentSheep.OnSheepNotHungry.AddListener(SheepNotHungry);
                    currentSheep.SetCurrentNode(targetNode);
                }
            }
        }

        private void OnDrawGizmos()
        {
            Gizmos.DrawWireCube(transform.position, new Vector3(gridWorldSize.x, 1, gridWorldSize.y));
        }

        public void SheepNotHungry()
        {
            Destroy(currentSheep.gameObject);
        }

        public void CreateGrid()
        {
            int gridSizeX = Mathf.RoundToInt(gridWorldSize.x / nodeDiameter);
            int gridSizeY = Mathf.RoundToInt(gridWorldSize.y / nodeDiameter);

            if (nodeArray != null && nodeArray.Length > 0)
            {
                // Töm först....
                for (int x = 0; x < gridSizeX; x++)
                {
                    for (int y = 0; y < gridSizeY; y++)
                    {
                        nodeArray[x, y] = null;
                    }
                }
            }

            nodeArray = new Node[gridSizeX, gridSizeY];
            Vector3 bottomLeft = transform.position - Vector3.right * gridWorldSize.x / 2 -
                                 Vector3.forward * gridWorldSize.y / 2;

            int numberOfTiles = gridSizeX * gridSizeY;
            int tilesGrassDrawn = 0, tilesStoneDrawn = 0;

            // Jord
            DrawDirt(gridSizeX, gridSizeY, bottomLeft);

            // Gräs
            tilesGrassDrawn = DrawTilesRandom(gridSizeX, gridSizeY, bottomLeft, grassAmount, TileType.Grass);

            // Sten
            tilesStoneDrawn = DrawTilesRandom(gridSizeX, gridSizeY, bottomLeft, stoneAmount, TileType.Stone);
        }

        public IEnumerable<Node> GetNeighbors(Node node)
        {
            int gridSizeX = Mathf.RoundToInt(gridWorldSize.x / nodeDiameter);
            int gridSizeY = Mathf.RoundToInt(gridWorldSize.y / nodeDiameter);
            int[,] dirs =
            {
                { 1, 0 },
                { -1, 0 },
                { 0, 1 },
                { 0, -1 }
            };

            for (int i = 0; i < dirs.GetLength(0); i++)
            {
                int nx = node.gridXPos + dirs[i, 0];
                int ny = node.gridYPos + dirs[i, 1];

                if (nx >= 0 && ny >= 0 && nx < gridSizeX && ny < gridSizeY)
                {
                    var n = nodeArray[nx, ny];
                    if (n.walkable)
                        yield return n;
                }
            }
        }

        private int DrawTilesRandom(int gridSizeX, int gridSizeY, Vector3 bottomLeft, int amount, TileType tileType)
        {
            int tilesCount = 0;
            int tilesDrawn = 0;
            while (tilesCount < amount)
            {
                int x = Random.Range(0, gridSizeX);
                int y = Random.Range(0, gridSizeY);

                if (nodeArray[x, y] != null && (nodeArray[x, y].tileObject.tileType != TileType.Dirt))
                {
                    tilesCount++;
                    continue;
                }

                Vector3 worldPoint = bottomLeft + Vector3.right * (x * nodeDiameter + nodeDiameter / 2) +
                                     Vector3.forward * (y * nodeDiameter + nodeDiameter / 2);

                Tile tile = Instantiate(tilePrefab, worldPoint, Quaternion.identity).GetComponent<Tile>();
                tile.transform.parent = transform;
                nodeArray[x, y] = new Node(worldPoint, tile, tileType, x, y);
                tilesCount++;
                tilesDrawn++;
            }

            return tilesDrawn;
        }

        private void DrawDirt(int gridSizeX, int gridSizeY, Vector3 bottomLeft)
        {
            for (int x = 0; x < gridSizeX; x++)
            {
                for (int y = 0; y < gridSizeY; y++)
                {
                    if (nodeArray[x, y] != null)
                    {
                        continue;
                    }

                    Vector3 worldPoint = bottomLeft + Vector3.right * (x * nodeDiameter + nodeDiameter / 2) +
                                         Vector3.forward * (y * nodeDiameter + nodeDiameter / 2);

                    Tile tileDirt = Instantiate(tilePrefab, worldPoint, Quaternion.identity).GetComponent<Tile>();
                    tileDirt.transform.parent = transform;
                    nodeArray[x, y] = new Node(worldPoint, tileDirt, TileType.Dirt, x, y);
                }
            }
        }
    }
}