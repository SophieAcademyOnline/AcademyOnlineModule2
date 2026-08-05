using System;
using System.Collections;
using System.Collections.Generic;
using Unity.AI.Navigation;
using UnityEditor;
using UnityEngine;
using UnityEngine.AI;

namespace Ovningsuppgift3
{
    public class ChasePlayer : MonoBehaviour
    {
        public NavMeshSurface navMeshSurface;
        public float distanceToTarget = 10f;

        private NavMeshAgent navMeshAgent;
        private SightSense sightSense;
        private Transform target;
        private Vector3 enemyStartPosition;

        void Start()
        {
            navMeshAgent = GetComponent<NavMeshAgent>();
            sightSense = GetComponent<SightSense>();
            target = null;
            enemyStartPosition = transform.position;
        }

        void Update()
        {
            if (target != null)
            {
                // Är dess target för långt borta ?
                if (Vector3.Distance(transform.position, target.position) > distanceToTarget)
                {
                    Debug.Log("target för långt borta" +
                              Vector3.Distance(transform.position, target.position).ToString());
                    target = null;
                    return;
                }

                // jaga målet
                navMeshAgent.SetDestination(target.position);
                navMeshSurface.BuildNavMesh();
            }
            else
            {
                // Återvänd till stratpositionen
                if (transform.position != enemyStartPosition)
                {
                    navMeshAgent.SetDestination(enemyStartPosition);
                    navMeshSurface.BuildNavMesh();
                }
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