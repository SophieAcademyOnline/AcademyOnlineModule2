using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Unity.VisualScripting;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class MovePlayer : MonoBehaviour
{
    public float moveSpeed = 3f;
    public float gravity = -9.81f;
    public float sensitivity = 300f;
    public float verticalVelocity;

    public List<Camera> cameras;

    private float yaw = 0f;
    private float pitch = 0f;

    private CharacterController controller;
    private Animator animator;
    private Vector3 velocity;

    // Start is called before the first frame update
    void Start()
    {
        controller = GetComponent<CharacterController>();
        animator = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        Camera activeCam = GetActiveCamera();

        float x = Input.GetAxis("Horizontal");
        float z = Input.GetAxis("Vertical");

        // Förflytta olika baserat på vilken typ av kamera som är aktiv
        Vector3 move = Vector3.zero;
        if (activeCam.CompareTag("MainCamera"))
        {
            // vanlig förflyttning, svärd-kamera 3thd person vy
            move = (transform.right * x + transform.forward * z) * moveSpeed;
            velocity = move;
        }
        else if (activeCam.CompareTag("1stPersonCamera"))
        {
            // Pilbåge kamera, när jag trycker framåt "W" så skall vi förflytta oss framåt trots att kroppen är vriden ett antal grader tex.
            move = (transform.forward * x + transform.right * -z) * moveSpeed;
            velocity = move;
        }

        
        // Hur snabbt vi rör sig
        float currentSpeed = move.magnitude;
        animator.SetFloat("Speed", currentSpeed);
        
        // Förflytta oss
        controller.Move(move * Time.deltaTime);
        
        // På marken ?
        if (controller.isGrounded)
        {
            if (verticalVelocity < 0f)
                verticalVelocity = -2f;
        }
        else
        {
            // Applicera gravitationen varje frame
            verticalVelocity += gravity * Time.deltaTime;
        }

        move = new Vector3(0, verticalVelocity, 0);
        controller.Move(move * Time.deltaTime);

        // Muspekare ?
        Vector2 mouse = new Vector2(Input.GetAxisRaw("Mouse X"), Input.GetAxisRaw("Mouse Y"));
        yaw += mouse.x * sensitivity * Time.deltaTime;
        pitch -= mouse.y * sensitivity * Time.deltaTime;
        pitch = Mathf.Clamp(pitch, -70f, 45f);
        transform.rotation = Quaternion.Euler(0f, yaw, 0f);

        // Vilken kamera är aktiv ?
        if (activeCam != null && activeCam.gameObject.activeSelf && activeCam.CompareTag("MainCamera"))
        {
            activeCam.transform.localRotation = Quaternion.Euler(pitch, 0f, 0f);
        }
    }

    public List<Camera> GetAllCameras()
    {
        return cameras;
    }

    public Camera GetActiveCamera()
    {
        for (int i = 0; i < cameras.Count; i++)
        {
            if (cameras[i].enabled && cameras[i].gameObject.activeSelf)
            {
                return cameras[i];
            }
        }

        return null;
    }
}