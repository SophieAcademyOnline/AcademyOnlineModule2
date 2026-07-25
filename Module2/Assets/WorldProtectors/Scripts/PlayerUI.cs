using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

using UnityEngine;

public class PlayerUI : MonoBehaviour
{
    public static PlayerUI playerUI;
    public GameObject weaponPopUpImage;
    
    private Button weaponUiButton;
    
    public bool toggleWeaponPopUp;
    public Weapon currentWeapon;
    
    private WeaponPopUPImageUI popUp = null;


    private void OnEnable()
    {
        playerUI = this;
    }

    private void OnDisable()
    {
        playerUI = null;
    }

    void Start()
    {
        weaponUiButton = GetComponent<Button>();
        if(weaponUiButton==null) return;
        Image weaponImage = weaponUiButton.GetComponent<Image>();
        weaponImage.sprite = currentWeapon.sprite;
        weaponUiButton.onClick.AddListener(PopUpWeaponImageButton);
    }

    public void PopUpWeaponImageButton()
    {
        if (currentWeapon == null) return;
        
        toggleWeaponPopUp = !toggleWeaponPopUp;
        if (toggleWeaponPopUp)
        {
            popUp = Instantiate(weaponPopUpImage,GameObject.Find("Canvas").transform).GetComponent<WeaponPopUPImageUI>();
        }
        else if(popUp!=null)
        {
            Destroy(popUp.gameObject);
            popUp = null;
        }
    }
   
}
