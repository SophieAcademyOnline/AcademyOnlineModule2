using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Inlamningsuppgift3_3D.SO_Scripts;
using UnityEngine;

namespace Inlamningsuppgift3_3D.Scripts
{
    public interface IHeroWeaponCapability
    {
        void Init(HeroWeapon heroWeapon);
        void Hide(HeroWeapon heroWeapon);
        void Attack(Animator animator);
    }

    public class PlayerWeapon : MonoBehaviour
    {
        public List<HeroWeapon> heroWeapons;
        
        private int currentWeaponIndex;
        private Animator animator;
        private bool canAttack = true;

        // Start is called before the first frame update
        void Start()
        {
            animator = GetComponent<Animator>();
            currentWeaponIndex = 0;
            animator.runtimeAnimatorController = heroWeapons[currentWeaponIndex].animatorController;
            GetWeaponCapability(heroWeapons[currentWeaponIndex]).Init(heroWeapons[currentWeaponIndex]);
        }

        // Update is called once per frame
        void Update()
        {
            bool changedWeapon = false;
            // Pilbåge eller svärd?
            if (Input.GetKeyDown(KeyCode.Alpha1))
            {
                currentWeaponIndex = 0;
                changedWeapon = true;
            }

            // Pilbåge eller svärd?
            if (Input.GetKeyDown(KeyCode.Alpha2))
            {
                currentWeaponIndex = 1;
                changedWeapon = true;
            }

            if (changedWeapon)
            {
                // Dölj alla vapen
                foreach (var heroWeapon in heroWeapons)
                {
                    GetWeaponCapability(heroWeapon).Hide(heroWeapon);
                }

                // För att visa det rätta vapnet
                animator.runtimeAnimatorController = heroWeapons[currentWeaponIndex].animatorController;
                GetWeaponCapability(heroWeapons[currentWeaponIndex]).Init(heroWeapons[currentWeaponIndex]);
                changedWeapon = false;
            }

            // Vid klick på E knappen..
            if (Input.GetKeyDown(KeyCode.E) && canAttack)
            {
                GetWeaponCapability(heroWeapons[currentWeaponIndex]).Attack(animator);
                StartCoroutine(AttackCoolDown());
            }
        }
        
        private IEnumerator AttackCoolDown()
        {
            canAttack = false;
            yield return new WaitForSeconds(6.0f);
            canAttack = true;
        }

        private IHeroWeaponCapability GetWeaponCapability(HeroWeapon heroWeapon)
        {
            GameObject[] array = Resources.FindObjectsOfTypeAll<GameObject>();
            List<Camera> cameras = GetComponent<MovePlayer>().GetAllCameras();
            
            switch (heroWeapon.weaponType)
            {
                case HeroWeapon.WeaponType.Ranged:
                    for (int i=0; i< cameras.Count(); i++)
                    {
                        if (cameras[i].CompareTag("1stPersonCamera"))
                        {
                            cameras[i].gameObject.SetActive(true);
                        }
                        else
                        {
                            cameras[i].gameObject.SetActive(false);
                        }
                    }

                    return array?.FirstOrDefault(x => x.CompareTag(heroWeapon.weaponTag)).gameObject.GetComponent<HeroBow>();
                case HeroWeapon.WeaponType.Melee:
                    for (int i=0; i< cameras.Count(); i++)
                    {
                        if (cameras[i].CompareTag("MainCamera"))
                        {
                            cameras[i].gameObject.SetActive(true);
                        }
                        else
                        {
                            cameras[i].gameObject.SetActive(false);
                        }
                    }

                    return array?.FirstOrDefault(x => x.CompareTag(heroWeapon.weaponTag)).gameObject.GetComponent<HeroSword>();
                default:
                    return null;
            }
        }
    }
}