using UnityEngine;

public class CameraController : MonoBehaviour
{
    public GameObject player;
    private PlayerMovement playerMovement;
    private Camera playerCamera;

    void Start()
    {
        playerCamera = GetComponent<Camera>();
        playerMovement = player.GetComponent<PlayerMovement>();
    }

    void LateUpdate()
    {
        playerCamera.transform.position = new Vector3(playerMovement.transform.position.x,
                                                      playerCamera.transform.position.y, 
                                                      playerCamera.transform.position.z);
    }

}
