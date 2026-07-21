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
        // Jag valde att ändra så att även andra datatyper kan använda sorteringen.
        // Har använt IComparable tidigare i klassiska webbapplikationer i .NET.
        // Fastän Array.Sort() ju finns men den använder enligt källor på internet
        // en kombination av HeapSort, Insertion sort och Quicksort baserat 
        // på om jag förstått det rätt antal items till exempel.
        // Generiska typer är bra eftersom de kan användas som mallar för att
        // ha samma tex. metoder oavsett vilket specifik typ av entitet (tex. bil, lastbil, buss etc.)
        // Så om du byter ut "private int[] numbers = new int[10];" mot en annan datatyp tex.
        // en custom class tex. "Bil" så kan den också användas för sortering.
        // Det enda kravet är då att man måste implementera IComparable interfacet/kontraktet i
        // implementationen av den custom classen ("Bil") tex.
        // tex.
        // public class Bil : IComparable<Bil>
        // {
        //     public int CompareTo(Bil otherObject)
        //     {
        //         return SomeProperty.CompareTo(otherObject.SomeProperty);
        //     }
        // }
        // Enligt dokumentation på https://learn.microsoft.com/en-us/dotnet/api/system.icomparable?view=netstandard-2.1

        int[] newNumbers = new int[numbers.Length];
        numbers.CopyTo(newNumbers, 0);

        MainSort();
        DisplayNumbers();

        // Verifera om sorteringen gick rätt till....
        
        // Minsta talet först...?
        if (sortType == SortType.MinHeapSort)
        {
            Array.Sort(newNumbers); // Sorterar A-Ö eller 1-10
        } // Största talet först...?
        else if (sortType == SortType.MaxHeapSort)
        {
            Array.Sort(newNumbers); // Sorterar A-Ö eller 1-10
            Array.Reverse(newNumbers); // Sorterar 10-1 eller Z-A
        }

        // Samma ordning på talen ?
        if (!newNumbers.SequenceEqual(numbers))
        {
            Debug.LogError("Sorting failed!"); // Inte samma ordning på talen!
        }
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

        BuildHeap(numbers, numberOfElements);

        for (int elementIndex = numberOfElements - 1; elementIndex >= 0; elementIndex--)
        {
            (numbers[0], numbers[elementIndex]) = (numbers[elementIndex], numbers[0]);

            Heapify<int>(numbers, elementIndex, 0);
        }
    }

    private void BuildHeap(int[] numbersArray, int numberOfElements)
    {
        for (int i = numberOfElements / 2 - 1; i >= 0; i--)
        {
            Heapify<int>(numbersArray, numberOfElements, i);
        }
    }

    /// <summary>
    /// Heapify generisk metod
    /// </summary>
    /// <param name="array">är en generisk array som implementerar IComparable interfacet</param>
    /// <param name="heapSize"></param>
    /// <param name="rootIndex"></param>
    /// <typeparam name="T"></typeparam>
    private void Heapify<T>(T[] array, int heapSize, int rootIndex) where T : IComparable
    {
        // Aktuell nod
        Node largestNode = Node.ConvertToNode(rootIndex);

        // Vänster nod
        Node leftNode = Node.ConvertToNode(2 * rootIndex + 1);

        // Höger nod
        Node rightNode = Node.ConvertToNode(2 * rootIndex + 2);

        if (sortType == SortType.MinHeapSort)
        {
            // Vänstra nod ?
            if (leftNode.WithinIndexBounds(heapSize)
                && array[leftNode.index].CompareTo(array[largestNode.index]) > 0)
            {
                largestNode = leftNode;
            }

            // Högra nod ?
            if (rightNode.WithinIndexBounds(heapSize)
                && array[rightNode.index].CompareTo(array[largestNode.index]) > 0)
            {
                largestNode = rightNode;
            }
        }
        else if (sortType == SortType.MaxHeapSort)
        {
            // Vänstra nod ?
            if (leftNode.WithinIndexBounds(heapSize)
                && array[leftNode.index].CompareTo(array[largestNode.index]) < 1)
            {
                largestNode = leftNode;
            }

            // Högra nod ?
            if (rightNode.WithinIndexBounds(heapSize)
                && array[rightNode.index].CompareTo(array[largestNode.index]) < 1)
            {
                largestNode = rightNode;
            }
        }

        // om största noden inte är roten
        if (largestNode.index != rootIndex)
        {
            (array[rootIndex], array[largestNode.index]) =
                (array[largestNode.index], array[rootIndex]);

            // Med rekursion arbeta vidare
            Heapify<T>(array, heapSize, largestNode.index);
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