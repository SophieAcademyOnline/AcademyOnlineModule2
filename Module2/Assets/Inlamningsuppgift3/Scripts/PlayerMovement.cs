using System.Collections;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public float speed;
    public float jumpForce;
    public float doubleJumpForce;

    private float horizontalInput;
    private float jumpInput;
    private bool isOnFloor = false;
    [SerializeField] private int jumpCounter = 0;
    [SerializeField] private bool isDoubleJumping = false;
    private bool releasedJumpButton = false;

    private Rigidbody2D rb;
    private Animator animator;
    private SpriteRenderer spriteRenderer;

    private bool obstacleHitPlayer = false;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        spriteRenderer = GetComponent<SpriteRenderer>();
    }

    void Update()
    {
        // H�mta inmatning
        horizontalInput = Input.GetAxis("Horizontal");
        jumpInput = Input.GetButton("Jump") ? 1 : 0;
        releasedJumpButton = Input.GetButtonUp("Jump");

        // Kontrollera hopp - enkelhopp eller hopp i luften till�tet
        if (releasedJumpButton)
        {
            if (jumpCounter + 1 > 2)
                jumpCounter = 2;
            else
                jumpCounter += 1;

            releasedJumpButton = false;
        }

        // Utf�r animationer
        Animation();
    }

    void Animation()
    {
        animator.SetFloat("speed", Mathf.Abs(horizontalInput));

        if (horizontalInput < 0f)
        {
            spriteRenderer.flipX = true;
        }
        else if (horizontalInput > 0f)
        {
            spriteRenderer.flipX = false;
        }

        if (isOnFloor)
        {
            animator.SetBool("fall", false);
        }
        else
        {
            if (Mathf.Sign(rb.linearVelocity.y) > 0)
            {
                // Enkelhopp ?
                if (!isDoubleJumping)
                {
                    animator.SetBool("doubleJump", false);
                    animator.SetBool("jump", true);
                } // Dubbelhopp ?
                else
                {
                    animator.SetBool("jump", false);
                    animator.SetBool("doubleJump", true);
                }
            }
            else
            {
                animator.SetBool("jump", false);
                animator.SetBool("doubleJump", false);
                animator.SetBool("fall", true);
            }
        }

        if (obstacleHitPlayer && animator.GetCurrentAnimatorClipInfo(0)[0].clip.name != "PlayerHit")
        {
            animator.SetBool("hit", true);
            StartCoroutine(ResetObstacleHit());
        }
    }

    private IEnumerator ResetObstacleHit()
    {
        yield return new WaitForSeconds(animator.GetCurrentAnimatorClipInfo(0)[0].clip.length);

        // �terst�ll efter "hit" animationen �r klar
        obstacleHitPlayer = false;
        animator.SetBool("hit", false);
        spriteRenderer.gameObject.transform.rotation = Quaternion.Euler(0, 0, 0);
    }

    public void ObstacleHitPlayer()
    {
        // Spelar "hit" animationen redan ?
        if (animator.GetCurrentAnimatorClipInfo(0)[0].clip.name == "PlayerHit")
            return;
        obstacleHitPlayer = true;
    }

    void FixedUpdate()
    {
        rb.linearVelocity = new Vector2(horizontalInput * speed, rb.linearVelocity.y);

        // P� golvet och hoppar f�rsta g�ngen
        if (isOnFloor && jumpInput > 0)
        {
            isOnFloor = false;
            rb.linearVelocity = new Vector2(rb.linearVelocity.x, jumpInput * jumpForce);
        }

        // Dubbel hopp ?
        if (!isOnFloor && jumpCounter == 2 && !isDoubleJumping)
        {
            rb.linearVelocity = new Vector2(rb.linearVelocity.x, doubleJumpForce * jumpForce);
            isDoubleJumping = true;
        }

        // Hinder tr�ffat sperlaren ?
        if (obstacleHitPlayer)
        {
            rb.linearVelocity = new Vector2(-(horizontalInput * speed), rb.linearVelocity.y);

        }
    }

    void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.CompareTag("Floor"))
        {
            isOnFloor = true;
            jumpCounter = 0;
            isDoubleJumping = false;
        }
    }

    void OnTriggerEnter2D(Collider2D collider)
    {
        if (collider.gameObject.CompareTag("Fruit"))
        {
            Fruit fruit = collider.gameObject.GetComponent<Fruit>();
            fruit.Collected();
            Debug.Log("Player's health: " + PlayerHealth.playerHealth.Health.ToString());
        }
    }
}
