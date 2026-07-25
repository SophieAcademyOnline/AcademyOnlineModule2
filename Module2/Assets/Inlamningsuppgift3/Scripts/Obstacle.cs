using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public float damage = 10f;
    private PlayerMovement player;

    private void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerMovement>();
    }

    void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.CompareTag("Player"))
        {
            PlayerHealth.playerHealth.Health -= (int)damage;
            player.ObstacleHitPlayer();
        }
    }
}
