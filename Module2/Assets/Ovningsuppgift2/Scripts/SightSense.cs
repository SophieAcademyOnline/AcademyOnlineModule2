using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Ovningsuppgift2
{
    public class SightSense : MonoBehaviour
    {
        public float sightAngle = 45.0f;
        private ChasePlayer chasePlayer;
        
        // Start is called before the first frame update
        void Start()
        {
            chasePlayer = GetComponent<ChasePlayer>();

        }

        // Update is called once per frame
        void Update()
        {

        }

        public void SightCheck(Transform newTarget)
        {
            Vector3 direction = newTarget.position - transform.position;
            float angle = Vector3.Angle(direction, transform.forward);

            if (angle > sightAngle)
            {
                chasePlayer.SetTarget(null);
                return;
            }
            chasePlayer.SetTarget(newTarget);
        }
    }
}