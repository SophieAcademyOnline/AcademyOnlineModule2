using System.Collections;
using UnityEngine;

public class Fruit : MonoBehaviour
{
    public int points;
    private Animator animator;

    void Start()
    {
        animator = GetComponent<Animator>();
    }

    public void Collected()
    {
        PlayerHealth.playerHealth.Health += points;
        StartCoroutine(nameof(PlayAnimationandWait));
    }

    IEnumerator PlayAnimationandWait()
    {
        animator.SetTrigger("collected");
        yield return new WaitForSeconds(animator.GetCurrentAnimatorClipInfo(0)[0].clip.length);
        Destroy(gameObject);
    }
}
