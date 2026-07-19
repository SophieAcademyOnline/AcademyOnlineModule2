using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class WeaponPopUPImageUI : MonoBehaviour
{
    public Text titleText;
    public Text descriptionText;
    public Text strengthText;
    public Text weaponTypeText;
    
    // Start is called before the first frame update
    void Start()
    {
        Weapon currentWeapon = PlayerUI.playerUI.currentWeapon;
        titleText.text = $"Weapon: {currentWeapon.title}";
        descriptionText.text = $"Description: {currentWeapon.description}";
        strengthText.text = $"Strength: {currentWeapon.strength.ToString()}";
        weaponTypeText.text = $"Type: {currentWeapon.weaponType.ToString()}";
    }
}
