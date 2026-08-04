using System;
using System.Collections;
using System.Collections.Generic;
using NUnit.Framework.Constraints;
using Unity.Mathematics;
using Unity.VisualScripting;
using UnityEditor.Searcher;
using UnityEngine;

namespace Inlamningsuppgift3_3D.Scripts
{
    public class Projectile : MonoBehaviour
    {
        private Rigidbody rb;
        private bool shouldMove = false;

        void Start()
        {
            rb = GetComponent<Rigidbody>();
        }

        private void OnDestroy()
        {
            rb = null;
            shouldMove = false;
            gameObject.SetActive(false);
        }
        
        void FixedUpdate()
        {
            if (shouldMove)
            {
                Move();
            }
        }

        public void FireArrow(GameObject player)
        {
            // Orientera pilen rätt
            float playerY = player.transform.rotation.eulerAngles.y;
            const float diffY = 155.0f;
            float pilY = playerY - diffY;
            const float arrowPointingForwardZ = -90f;
            transform.rotation = Quaternion.Euler(0f, pilY, arrowPointingForwardZ);
            shouldMove = true;
        }

        private void Move()
        {
            Vector3 move = transform.up * 15.0f;
            rb.MovePosition(rb.position + move * Time.fixedDeltaTime);
        }
    }
}