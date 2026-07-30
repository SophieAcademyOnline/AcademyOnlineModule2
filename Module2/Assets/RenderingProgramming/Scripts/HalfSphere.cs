using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HalfSphere : MonoBehaviour
{
    private Mesh mesh;
   
    void Start()
    {
        MeshFilter meshFilter = GetComponent<MeshFilter>();
        if (meshFilter == null)
        {
            Debug.LogError("MeshFilter component not found on the game object.");
            return;
        }
        
        mesh = meshFilter.mesh;
        Vector3[] vertices = mesh.vertices;
        Vector3 center = mesh.bounds.center;
        
        for(int i=0; i < vertices.Length; i++)
        {
            if (vertices[i].y < center.y)
                vertices[i].y = center.y;
        }
        
        mesh.vertices = vertices;
    }

 
    void Update()
    {
        
    }

    // private void OnDrawGizmos()
    // {
    //     Gizmos.color = Color.red;
    //     Vector3[] vertices = mesh.vertices;
    //     foreach (Vector3 vertex in vertices)
    //     {
    //         Gizmos.DrawWireSphere(transform.TransformPoint(vertex), 0.01f);
    //     }
    // }
}
