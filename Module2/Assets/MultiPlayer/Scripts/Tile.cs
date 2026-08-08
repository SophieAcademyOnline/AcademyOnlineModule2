using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Unity.Mathematics;
using UnityEngine;

namespace Multiplayer
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
        public int health;
        public int hunger;
        
        private MeshRenderer meshRenderer;
        private Grid grid;
        private bool checkingForDirt = false;

        void Start()
        {
            meshRenderer = GetComponent<MeshRenderer>();
            grid = GetComponentInParent<Grid>();
            ChangeTileType();
        }

        void Update()
        {
            if (tileType == TileType.Grass)
            {
                health -= Mathf.RoundToInt(Time.deltaTime * 15f);
                
                if (health <= 0)
                {
                    tileType = TileType.Dirt;
                    ChangeTileType();
                }

                if (health >= 70 && !checkingForDirt)
                {
                    checkingForDirt = true;
                    StartCoroutine(CheckIfDirt());
                }
            }
        }

        private IEnumerator CheckIfDirt()
        {
            yield return new WaitForSeconds(5f);
            // Om gräsets hälsa är större eller lika med 70, då ska den var 5:e sekund
            // kolla sina grannar för att se om de är jord

            /*
             a. Om det är sant, då ska gräset välja en av dessa grannar och
                omvandla den till gräs.
             b. Det nya gräs objektets ska få ett hunger värde på 100
             */
            List<Node> neighbors = grid.GetNeighbors(node).ToList();
            Node targetNode = neighbors.Where(n => n.tileObject.tileType == TileType.Dirt).FirstOrDefault();
            if (targetNode != null)
            {
                targetNode.tileObject.tileType = TileType.Grass;
                targetNode.tileObject.ChangeTileType();
                targetNode.tileObject.hunger = 100;
            }
            checkingForDirt = false;
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
                    health = 100;
                    break;
            }
        }

        void SetTileColor(Color color)
        {
            meshRenderer.material.color = color;
        }
    }
}