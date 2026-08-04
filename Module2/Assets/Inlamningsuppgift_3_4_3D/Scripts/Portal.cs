using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;


namespace Inlamningsuppgift3_3D.Scripts
{
    /// <summary>
    /// Inlämningsuppgift 4. Började som inlämningsuppgift 3 och byggde vidare så nu är detta också inlämningsuppgift 4.
    /// Dependency: BoxCollider
    /// </summary>
    public class Portal : MonoBehaviour
    {
        [Tooltip("Referens till teleporteringens destination")]
        public GameObject teleportDestination;
        [Tooltip("Referens till portalarean")]
        public GameObject portalArea;
        [Tooltip("Max antal gånger man kan gå genom portalen")]
        public int maxPortalEntries = 1;

        private PortalManager portalManager;
        private PortalAreaDetector portalAreaDetector;
        private BoxCollider portalCollider;
        private int portalEntryCount = 0;
        private Material portalMaterial;

        void Start()
        {
            portalAreaDetector = GetComponentInChildren<PortalAreaDetector>();
            portalAreaDetector.OnPlayerEnteredPortal.AddListener(PlayerEnteredPortal);
            portalCollider = portalAreaDetector.GetComponent<BoxCollider>();
            portalManager = FindFirstObjectByType<PortalManager>();
            
            Renderer renderer = portalArea.GetComponent<Renderer>();
            portalMaterial = renderer.material;
            // Start färg
            Color hdrColor = new Color(0f, 4f, 0f, 1f);
            portalMaterial.SetColor("_Color", hdrColor);
        }

        private void PlayerEnteredPortal()
        {
            portalEntryCount++;
            // Max antal teleporteringar ?
            if (portalEntryCount > maxPortalEntries)
            {
                // Stopp
                Renderer renderer = portalArea.GetComponent<Renderer>();
                portalMaterial = renderer.material;
                Color hdrColor = new Color(4f, 0f, 0f, 1f);
                portalMaterial.SetColor("_Color", hdrColor);
                portalCollider.isTrigger = false; // Inte kunna gå igenom portalen framifrån
                return;
            }
            else
            {
                // Okej att teleportera
                portalManager.TeleportToPortal(this);
            }
        }
    }
}