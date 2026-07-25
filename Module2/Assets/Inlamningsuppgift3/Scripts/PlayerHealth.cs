using UnityEngine;

public class PlayerHealth : MonoBehaviour
{
    public static PlayerHealth playerHealth;
    private int health = 50;
    private int maxHealth = 100;

    private void OnEnable()
    {
        playerHealth = this;
    }

    private void OnDisable()
    {
        playerHealth = null;
    }

    public int Health 
    { 
        get => health; 
        set { 
            health = value;
            if (health > maxHealth) health = maxHealth;
        } 
    }
    public int MaxHealth { get => maxHealth; set => maxHealth = value; }

}
