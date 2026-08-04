using System;
using System.Collections;
using System.Collections.Generic;
using Inlamningsuppgift3_3D.Scripts;
using UnityEngine;

namespace Inlamningsuppgift3_3D.SO_Scripts
{
    [CreateAssetMenu(fileName = "New Hero Weapon", menuName = "Weapons/Hero Weapon")]
    public class HeroWeapon : ScriptableObject
    {
        public enum WeaponType
        {
            Ranged = 0,
            Melee = 1
        };

        public string weaponName;
        public WeaponType weaponType;
        public RuntimeAnimatorController animatorController;
        public string weaponTag;
    }
}