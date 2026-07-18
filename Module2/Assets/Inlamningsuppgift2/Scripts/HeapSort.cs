using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using TMPro;
using UnityEditor.Experimental.GraphView;
using UnityEngine;
using UnityEngine.UI;
using Random = UnityEngine.Random;


public class HeapSort : MonoBehaviour
{
    public GameObject[] uiPrefabs;

    private Button sortButton;
    private int[] numbers = new int[10];

    /// <summary>
    /// Vilken typ av sortering min eller max ?
    /// </summary>
    public SortType sortType;

    void Start()
    {
        sortButton = GetComponent<Button>();
        sortButton.onClick.AddListener(SortNumbersButton);

        numbers = numbers.Select(randomNumber => Random.Range(0, 100)).ToArray();
        DisplayNumbers();
    }

    private void SortNumbersButton()
    {
        MainSort();
        DisplayNumbers();
    }

    private void DisplayNumbers()
    {
        // Visa heltalen
        for (int index = 0; index < numbers.Length; index++)
        {
            uiPrefabs[index].GetComponent<TextMeshProUGUI>().text = numbers[index].ToString();
        }
    }

    /// <summary>
    /// Eftersom classen heter "MaxHeapSort" måste jag döpa om till något annat annars konflikt -> MainSort
    /// </summary>
    public void MainSort()
    {
        int numberOfElements = numbers.Count();

        BuildHeap(ref numbers, numberOfElements);

        for (int elementIndex = numberOfElements - 1; elementIndex >= 0; elementIndex--)
        {
            (numbers[0], numbers[elementIndex]) = (numbers[elementIndex], numbers[0]);

            Heapify(numbers, elementIndex, 0);
        }
    }

    private void BuildHeap(ref int[] numbersArray, int numberOfElements)
    {
        for (int i = numberOfElements / 2 - 1; i >= 0; i--)
        {
            Heapify(numbersArray, numberOfElements, i);
        }
    }

    private void Heapify(int[] numbersArray, int heapSize, int rootIndex)
    {
        // Aktuell nod
        Node largestNode = Node.ConvertToNode(rootIndex);

        // Vänster nod
        Node leftNode = Node.ConvertToNode(2 * rootIndex + 1);

        // Höger nod
        Node rightNode = Node.ConvertToNode(2 * rootIndex + 2);

        // Vänstra nod är högsta ?
        if (leftNode.WithinIndexBounds(heapSize)
            && numbersArray[leftNode.index].CompareAccordingToSortType(numbersArray[largestNode.index], sortType))
        {
            largestNode = leftNode;
        }

        // Högra nod är högsta ?
        if (rightNode.WithinIndexBounds(heapSize)
            && numbersArray[rightNode.index].CompareAccordingToSortType(numbersArray[largestNode.index], sortType))
        {
            largestNode = rightNode;
        }

        // om största noden inte är roten
        if (largestNode.index != rootIndex)
        {
            (numbersArray[rootIndex], numbersArray[largestNode.index]) =
                (numbersArray[largestNode.index], numbersArray[rootIndex]);

            // Med rekursion arbeta vidare
            Heapify(numbersArray, heapSize, largestNode.index);
        }
    }

    /// <summary>
    /// Ska underlätta hur koden är läsbar, används för nodhantering
    /// </summary>
    public struct Node
    {
        public int index;

        public static Node ConvertToNode(int nodeIndex)
        {
            return new Node()
            {
                index = nodeIndex,
            };
        }

        /// <summary>
        /// Index inom heapsize så att det inte blir utanför heapSize
        /// </summary>
        /// <param name="heapSize">int värde</param>
        /// <returns>true eller false, true inom gräns annars false</returns>
        public bool WithinIndexBounds(int heapSize)
        {
            return index < heapSize;
        }
    }
}