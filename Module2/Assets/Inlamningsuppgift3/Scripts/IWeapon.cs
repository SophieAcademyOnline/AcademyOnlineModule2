using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Vanliga funktioner såsom att attackera med vapnet med mera
/// </summary>
public interface IWeapon
{
   /// <summary>
   /// Initiera vapnet 
   /// </summary>
   /// <param name="spriteFromSO">sprite from ScriptableObject</param>
   void Init(Sprite spriteFromSO);
   
   /// <summary>
   /// Attackerar med vapnet
   /// </summary>
   /// <param name="root">player transform</param>
   void Attack(Transform root);
}