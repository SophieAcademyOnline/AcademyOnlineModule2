using System.Collections;
using System.Collections.Generic;
using Inlamningsuppgift3_3D.SO_Scripts;
using UnityEngine;

namespace Inlamningsuppgift3_3D.Scripts
{
    public class HeroSword : MonoBehaviour, IHeroWeaponCapability
    {
        public void Init(HeroWeapon heroWeapon)
        {
            gameObject.SetActive(true);
        }
        
        public void Hide(HeroWeapon heroWeapon)
        {
            gameObject.SetActive(false);
        }

        public void Attack(Animator animator)
        {
            // Svinga svärdet
            animator.SetTrigger("Attack");
            StartCoroutine(ChangeColor());
        }

        private IEnumerator ChangeColor()
        {
            Color orgColor = gameObject.GetComponent<MeshRenderer>().material.color;
            gameObject.GetComponent<MeshRenderer>().material.color = Color.red;
            yield return new WaitForSeconds(2.0f);
            gameObject.GetComponent<MeshRenderer>().material.color = orgColor;
        }
    }
}