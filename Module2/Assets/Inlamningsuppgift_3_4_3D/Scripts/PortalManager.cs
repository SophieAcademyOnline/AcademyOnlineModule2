using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Unity.VisualScripting;
using UnityEngine;

namespace Inlamningsuppgift3_3D.Scripts
{
    [Serializable]
    public class PortalDestination
    {
        [SerializeField] public Portal portal;
        [SerializeField] public Transform destinationToTeleportTo;
    }

    /// <summary>
    /// Inlämningsuppgift 4. Började som inlämningsuppgift 3 och byggde vidare så nu är detta också inlämningsuppgift 4.
    /// Dependency: BoxCollider
    /// </summary>
    public class PortalManager : MonoBehaviour
    {
        [Tooltip("Referens till alla portaler")]
        [SerializeField] private List<PortalDestination> portals;

        public void TeleportToPortal(Portal originPortal)
        {
            GameObject player = GameObject.FindWithTag("Player");
            CharacterController playerController = player.GetComponent<CharacterController>();
            
            playerController.enabled = false;
            int portalIndex = portals.IndexOf(portals.FirstOrDefault(p => p.portal == originPortal));
            
            if (portalIndex == -1)
            {
                Debug.Log("Kunde inte hitta destination att teleportera till.");
                return;
            }
            
            playerController.transform.position = portals[portalIndex].destinationToTeleportTo.transform.position;
            playerController.enabled = true;
        }
    }
}