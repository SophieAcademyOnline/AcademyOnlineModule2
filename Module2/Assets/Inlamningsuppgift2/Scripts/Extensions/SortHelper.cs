using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum SortType
{
    MinHeapSort = 0,
    MaxHeapSort = 1
};

public static class IntegerExtensions
{
    public static bool CompareAccordingToSortType(this int x, int y, SortType sort)
    {
        if (sort == SortType.MaxHeapSort)
            return x < y;
        if (sort == SortType.MinHeapSort)
            return x > y;

        return false;
    }
}