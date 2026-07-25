using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Weapon", menuName = "Weapons/Weapon")]
public class Weapon : ScriptableObject
{
   public enum WeaponType
   {
      Melee = 0,
      Range = 1
   };

   public enum AmmunitionType
   {
      None = 0,
      Arrow = 1,
      Color = 2
   };

   public string title;
   public Sprite sprite;
   public WeaponType weaponType;
   public AmmunitionType ammunitionType;
   public string description;
   public int strength;
   public int range;
}
