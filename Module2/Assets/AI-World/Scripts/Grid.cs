using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

namespace AIworld
{
    public class Grid : MonoBehaviour
    {
        public Vector2 gridWorldSize;
        public GameObject tilePrefab;
        public int grassAmount;
        public static Grid instance;
        public float tileScale = 10;
        public int minTileSize = 1;
        public int maxTileSize = 3;

        private Node[,] node;
        public float nodeDiameter;

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
        }

        private void OnDrawGizmos()
        {
            Gizmos.DrawWireCube(transform.position, new Vector3(gridWorldSize.x, 1, gridWorldSize.y));
        }

        public void SetTileSize(float newSize)
        {
        }

        public void CreateGrid()
        {
            int gridSizeX = Mathf.RoundToInt(gridWorldSize.x / nodeDiameter);
            int gridSizeY = Mathf.RoundToInt(gridWorldSize.y / nodeDiameter);

            node = new Node[gridSizeX, gridSizeY];
            Vector3 bottomLeft = transform.position - Vector3.right * gridWorldSize.x / 2 -
                                 Vector3.forward * gridWorldSize.y / 2;

            // Gräs
            int grassTilesCount = 0;
            while (grassTilesCount < grassAmount)
            {
                int x = Random.Range(0, gridSizeX);
                int y = Random.Range(0, gridSizeY);

                if (node[x, y] != null)
                {
                    continue;
                }
                
                Vector3 worldPoint = bottomLeft + Vector3.right * (x * nodeDiameter + nodeDiameter / 2) +
                                     Vector3.forward * (y * nodeDiameter + nodeDiameter / 2);
                    
                Tile tileGrass = Instantiate(tilePrefab, worldPoint, Quaternion.identity).GetComponent<Tile>();
                tileGrass.transform.parent = transform;
                node[x, y] = new Node(worldPoint, tileGrass, TileType.Grass, x, y);
                grassTilesCount++;
            }

            // Jord
            for (int x = 0; x < gridSizeX; x++)
            {
                for (int y = 0; y < gridSizeY; y++)
                {
                    if (node[x, y] != null)
                    {
                        continue;
                    }
                    
                    Vector3 worldPoint = bottomLeft + Vector3.right * (x * nodeDiameter + nodeDiameter / 2) +
                                         Vector3.forward * (y * nodeDiameter + nodeDiameter / 2);
                    
                    Tile tileDirt = Instantiate(tilePrefab, worldPoint, Quaternion.identity).GetComponent<Tile>();
                    tileDirt.transform.parent = transform;
                    node[x, y] = new Node(worldPoint, tileDirt, TileType.Dirt, x, y);
                }
            }
        }
    }
}