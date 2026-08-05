using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AIworld
{
    public class Node
    {
        private Vector3 worldPosition;
        public Tile tileObject;
        public int gridXPos;
        public int gridYPos;

        public Node(Vector3 worldPos, Tile tile, TileType tileType, int gridX, int gridY)
        {
            worldPosition = worldPos;
            tileObject = tile;
            gridXPos = gridX;
            gridYPos = gridY;
            tileObject.node = this;
            tileObject.tileType = tileType;
        }
        
    }
}