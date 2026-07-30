using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreateTriangle : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        Pyramid();
    }


    void Triangle()
    {
        MeshFilter meshFilter = GetComponent<MeshFilter>();
        Mesh mesh = meshFilter.mesh;

        Vector3[] vertices = new Vector3[3];
        vertices[0] = new Vector3(0, 0, 0);
        vertices[1] = new Vector3(1, 0, 0);
        vertices[2] = new Vector3(-1, 0, 0);

        int[] triangles = new int[3] { 0, 1, 2 };

        mesh.Clear();
        mesh.vertices = vertices;
        mesh.triangles = triangles;
        mesh.RecalculateNormals();
    }

    void Pyramid()
    {
        Mesh mesh = new Mesh
        {
            name = "Pyramid"
        };

        // Hörn 5 st
        Vector3[] vertices = new Vector3[]
        {
            new(0, 1, 0),
            new(-1, 0, -1),
            new(1, 0, -1),
            new(1, 0, 1),
            new(-1, 0, 1)
        };

        // 6 trianglar
        int[] triangles = new int[]
        {
            0, 1, 2,
            0, 2, 3,
            0, 3, 4,
            0, 4, 1,
            1, 4, 3,
            1, 3, 2
        };

        mesh.vertices = vertices;
        mesh.triangles = triangles;

        mesh.RecalculateNormals();
        mesh.RecalculateBounds();

        // Presentera resultatet
        GetComponent<MeshFilter>().mesh = mesh;
    }
}