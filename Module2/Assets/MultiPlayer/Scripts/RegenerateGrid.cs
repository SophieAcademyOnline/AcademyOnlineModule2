using UnityEngine;
using UnityEditor;

namespace Multiplayer
{
    [CustomEditor(typeof(Grid))]
    public class RegenerateGridEditor : Editor
    {
        public override void OnInspectorGUI()
        {
            DrawDefaultInspector();

            Grid comp = (Grid)target;
            if (GUILayout.Button("Skapa om Grid"))
            {
                comp.CreateGrid();
            }
        }
    }
}