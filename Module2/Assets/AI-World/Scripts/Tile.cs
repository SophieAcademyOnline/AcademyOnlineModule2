using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace AIworld
{
    public enum TileType
    {
        Dirt = 0,
        Grass = 1,
        Stone = 2
    };

    public class Tile : MonoBehaviour
    {
        public Node node;
        public Color dirtColor;
        public Color grassColor;
        public Color stoneColor;
        public TileType tileType;

        private MeshRenderer meshRenderer;
        
        void Start()
        {
            meshRenderer = GetComponent<MeshRenderer>();
            ChangeTileType();
        }

        public void ChangeTileType()
        {
            switch (tileType)
            {
                case TileType.Dirt:
                    SetTileColor(dirtColor);
                    break;
                case TileType.Stone:
                    SetTileColor(stoneColor);
                    break;
                case TileType.Grass:
                    SetTileColor(grassColor);
                    break;
            }
        }

        void SetTileColor(Color color)
        {
            meshRenderer.material.color = color;
        }
    }
}