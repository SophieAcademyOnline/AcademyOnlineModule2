using System.Collections;
using System.Collections.Generic;
using Unity.AI.Navigation;
using UnityEngine;
using UnityEngine.AI;
public class EnemyNavigation : MonoBehaviour
{
    public Transform goalPosition;
    public NavMeshSurface navMeshSurface;

    NavMeshAgent navMeshAgent;
    // Start is called before the first frame update
    void Start()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
    }

    // Update is called once per frame
    void Update()
    {
        if(!goalPosition || navMeshAgent == null) return;
        navMeshAgent.SetDestination(goalPosition.position);
        navMeshSurface.BuildNavMesh();
    }
}
