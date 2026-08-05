using System;
using System.Collections;
using System.Collections.Generic;
using Unity.AI.Navigation;
using UnityEngine;
using UnityEngine.AI;

namespace Ovningsuppgift2
{
    public class ChasePlayer : MonoBehaviour
    {
        public NavMeshSurface navMeshSurface;
        private NavMeshAgent navMeshAgent;

        private SightSense sightSense;
        private Transform target;
        
        void Start()
        {
            navMeshAgent = GetComponent<NavMeshAgent>();
            sightSense = GetComponent<SightSense>();
            target = null;
        }
        
        void Update()
        {
            if (target != null)
            {
                // jaga målet
                navMeshAgent.SetDestination(target.position);
                navMeshSurface.BuildNavMesh();
            }
        }

        private void OnTriggerEnter(Collider other)
        {
            // Har Player kolliderat med enemy ?
            if (other.CompareTag("Player"))
            {
                target = other.transform; // Spelaren blir fiendens mål
            }
        }

        private void OnCollisionEnter(Collision collision)
        {
            CheckColliderObject(collision.gameObject);
        }

        private void OnCollisionStay(Collision other)
        {
            CheckColliderObject(other.gameObject);
        }

        private void CheckColliderObject(GameObject other)
        {
            if (!other.CompareTag("Player"))
            {
                return;
            }

            sightSense.SightCheck(other.transform);
        }

        public void SetTarget(Transform newTarget)
        {
            target = newTarget;
        }
    }
}