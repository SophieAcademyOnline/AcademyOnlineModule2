using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace Inlamningsuppgift3_3D.Scripts
{
    /// <summary>
    /// Inlämningsuppgift 4. Började som inlämningsuppgift 3 och byggde vidare så nu är detta också inlämningsuppgift 4.
    /// Dependency: BoxCollider
    /// </summary>
    public class PortalAreaDetector : MonoBehaviour
    {
        [Tooltip("Event som körs när spelaren går in i portalarean")]
        public UnityEvent OnPlayerEnteredPortal;
        
        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag("Player"))
            {
                OnPlayerEnteredPortal?.Invoke();
            }
        }
    }
}