using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class OvningsuppgiftZero : MonoBehaviour
{
    public InputField nameTextBox;
    public InputField ageTextBox;
    public GameObject textContainer;
    public TMP_FontAsset fontAsset;

    private TextMeshProUGUI spawnText;
    private Button okayButton;
    private Dictionary<string, int> nameAgeDictionary = new Dictionary<string, int>();

    // Start is called before the first frame update
    void Start()
    {
        okayButton = GetComponent<Button>();
        spawnText = textContainer.GetComponentInChildren<TextMeshProUGUI>();
        okayButton.onClick.AddListener(OnOkayButtonClicked);
    }

    private void OnOkayButtonClicked()
    {
        string name = nameTextBox.text;
        string age = ageTextBox.text;
        int ageInt = 0;
        
        if (name.Trim().Length < 1)
        {
            return;
        }
        
        try
        {
           ageInt = Convert.ToInt32(age.Trim());
        }
        catch (Exception)
        {
            return;
        }
        
        // Finns namnet redan i dictionaryn ?
        if (nameAgeDictionary.ContainsKey(name))
        {
            // Ja, anropa rutin som visar text (Istället för en magic string så använd nameof operator (blir ju text))
            StartCoroutine(nameof(ShowText), nameAgeDictionary[name].ToString());
        }
        else
        {
            // Nej, anropa rutin som visar text (Istället för en magic string så använd nameof operator (blir ju text))
            nameAgeDictionary.Add(name, ageInt);
            StartCoroutine(nameof(ShowText), "Value does not exist in dictionary");
        }
    }

    private IEnumerator ShowText(string txt)
    {
        textContainer.SetActive(true);
        spawnText.text = txt;
        // Vänta 5 sekunder
        yield return new WaitForSeconds(5f);
        textContainer.SetActive(false);
    }
}