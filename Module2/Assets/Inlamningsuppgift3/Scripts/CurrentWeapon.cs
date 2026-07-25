using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class CurrentWeapon : MonoBehaviour
{
    private Weapon weapon;
    public Bow bow;
    public Sword sword;
    private int attackCount = 0;
    
    void Start()
    {
        // Ändra PlayerUI property Current Weapon för att ändra vapen
        weapon = GameObject.Find("PlayerUI").GetComponent<PlayerUI>().currentWeapon;
        switch (weapon.weaponType)
        {
            case Weapon.WeaponType.Range:
                bow.gameObject.SetActive(true);
                bow.Init(weapon.sprite);
                bow.OnArrowDestroyed.AddListener(() =>
                {
                    attackCount = 0;
                });
                break;
            case Weapon.WeaponType.Melee:
                sword.gameObject.SetActive(true);
                sword.Init(weapon.sprite);
                sword.OnAttackPerformed.AddListener(() =>
                {
                    attackCount = 0;
                });
                break;
        }
    }
    
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && attackCount == 0)
        {
            switch (weapon.weaponType)
            {
                case Weapon.WeaponType.Range:
                    bow.Attack(gameObject.transform);
                    attackCount = 1;
                    break;
                case Weapon.WeaponType.Melee:
                    sword.Attack(gameObject.transform);
                    attackCount = 1;
                    break;
            }
        }
    }
}