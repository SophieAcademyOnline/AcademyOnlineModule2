using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Multiplayer
{
    public class Node
    {
        public Vector3 worldPosition;
        public Tile tileObject;
        public int gridXPos;
        public int gridYPos;
        
        public float G; // cost from start
        public float H; // heuristic
        public float F => G + H;
        public Node Parent;
        public bool walkable => (tileObject.tileType == TileType.Grass || tileObject.tileType == TileType.Dirt);

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