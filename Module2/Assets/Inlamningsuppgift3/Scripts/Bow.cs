using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class Bow : MonoBehaviour, IWeapon
{
    public UnityEvent OnArrowDestroyed;
    public GameObject arrow;
    
    private SpriteRenderer spriteRenderer;
    private GameObject arrowInstance;

    public void Awake()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
    }

    private void OnDestroy()
    {
        Destroy(arrowInstance);
    }

    public void Init(Sprite spriteFromSO)
    {
        spriteRenderer.sprite = spriteFromSO;
    }
    
    public void Attack(Transform root)
    {
        arrowInstance = Instantiate(arrow, root.position, arrow.transform.rotation);
        arrowInstance.SetActive(true);
        StartCoroutine(nameof(DestroyArrow));
    }
    
    private IEnumerator DestroyArrow()
    {
        yield return new WaitForSeconds(5.0f);
        Destroy(arrowInstance);
        OnArrowDestroyed?.Invoke();
    }
}