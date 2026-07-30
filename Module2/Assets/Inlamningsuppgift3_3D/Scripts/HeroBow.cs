using System;
using System.Collections;
using System.Collections.Generic;
using Inlamningsuppgift3_3D.SO_Scripts;
using UnityEngine;
using UnityEngine.Rendering;

namespace Inlamningsuppgift3_3D.Scripts
{
    public class HeroBow : MonoBehaviour, IHeroWeaponCapability
    {
        [NonSerialized] private HeroWeapon _heroWeapon;
        
        public GameObject arrow;
        
        public void Init(HeroWeapon heroWeapon)
        {
            _heroWeapon = heroWeapon;
            gameObject.SetActive(true);
        }

        public void Hide(HeroWeapon heroWeapon)
        {
            gameObject.SetActive(false);
        }

        public void Attack(Animator animator)
        {
            // Animation Rigging package används
            GameObject[] arrowConstraints = GameObject.FindGameObjectsWithTag("ArrowConstraint");
            GameObject instanceArrow = GameObject.FindGameObjectWithTag("Arrow");
            GameObject bow = GameObject.FindGameObjectWithTag("Bow");

            // Förbered att skjuta pilen
            StartCoroutine(AttackPrepareToFireArrow(animator, bow, instanceArrow, arrowConstraints));
        }
        
        private IEnumerator AttackPrepareToFireArrow(Animator animator, GameObject bow, GameObject instanceArrow, GameObject[] arrowConstraints)
        {
            // Initiera attacken
            animator.SetTrigger("Attack");

            yield return new WaitForSeconds(0.5f);

            // Av med constraints för pilen
            foreach (GameObject arrowConstraint in arrowConstraints)
            {
                arrowConstraint.SetActive(false);
            }
            // Dölj pilen i animationen
            instanceArrow.SetActive(false);
            //instanceArrow.transform.SetParent(GameObject.FindGameObjectWithTag("Bow").transform.parent);

            // Skjut pilen
            GameObject newArrow = Instantiate(arrow, bow.transform.position, bow.transform.rotation);
            newArrow.SetActive(true);
            newArrow.GetComponent<Projectile>().FireArrow(bow.GetComponentInParent<PlayerWeapon>().gameObject);
            Destroy(newArrow, 5f);

            yield return new WaitForSeconds(0.1f);
            // Visa pilen igen
            instanceArrow.SetActive(true);
            // På med constraints för pilen
            foreach (GameObject arrowConstraint in arrowConstraints)
            {
                arrowConstraint.SetActive(true);
            }
        }
    }
}