using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class Sword : MonoBehaviour, IWeapon
{
    public UnityEvent OnAttackPerformed;
    
    private SpriteRenderer spriteRenderer;
    
    public void Awake()
    {
        spriteRenderer = GetComponent<SpriteRenderer>();
    }
    
    private void OnDestroy()
    {
        this.gameObject.SetActive(false);
    }
    
    public void Init(Sprite spriteFromSO)
    {
        spriteRenderer.sprite = spriteFromSO;
    }
    
    public void Attack(Transform root)
    {
        StartCoroutine(ChangeColor());
    }
    
    private IEnumerator ChangeColor()
    {
        Color coriginalColor = spriteRenderer.color;
        spriteRenderer.color = Color.red;
        // Vänta 2 sekunder
        yield return new WaitForSeconds(2.0f);
        spriteRenderer.color = coriginalColor;
        OnAttackPerformed?.Invoke();
    }
}