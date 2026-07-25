using System.Collections;
using System.Collections.Generic;
using NUnit.Framework.Constraints;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    void Update()
    {
        // Så att man hinner se pilen röra sig
        this.gameObject.transform.position += Vector3.right * 1.0f * Time.deltaTime;
    }
}
