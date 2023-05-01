using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestCube : MonoBehaviour {
    string str;
    static string jsgf;
    static string kws;
    float direction = 0f;
    float velocity = 0f;
    float meters = 0f;
    float startposition = 0f;
    // Use this for initialization
    void Start () {
        jsgf = Application.dataPath + "/Resources/UnitySphinx/model/en-us/movement.gram";
        kws = Application.dataPath + "/Resources/UnitySphinx/model/en-us/keyphrase.list";
        UnitySphinx.Init(jsgf, kws);
        UnitySphinx.Run();
        direction = 0f;
        meters = 0f;
        startposition = 0f;
        velocity = 0f;

    }
	
	// Update is called once per frame
	void Update () {
        str = UnitySphinx.DequeueString();
        if (UnitySphinx.GetSearchModel() == "kws")
        {
            //print("listening for keyword");
            if (str != "")
            {
                if(str.IndexOf("movement")!=-1)
                {
                    UnitySphinx.Stop();
                    jsgf = Application.dataPath + "/Resources/UnitySphinx/model/en-us/movement.gram";
                    UnitySphinx.Init(jsgf, kws);
                    UnitySphinx.Run();
                    UnitySphinx.SetSearchModel(UnitySphinx.SearchModel.jsgf);
                }
                if(str.IndexOf("rotation")!=-1)
                {
                    UnitySphinx.Stop();
                    jsgf = Application.dataPath + "/Resources/UnitySphinx/model/en-us/rotation.gram";
                    UnitySphinx.Init(jsgf, kws);
                    UnitySphinx.Run();
                    UnitySphinx.SetSearchModel(UnitySphinx.SearchModel.jsgf);
                }
                
                print(str);
            }
        }
        else if (UnitySphinx.GetSearchModel() == "jsgf")
        {
            print("listening for order");

            if (str != "")
            {
                if (str.IndexOf("move") != -1)
                {
                    startposition = 0f;
                    if (str.IndexOf("up") != -1)
                    {
                        direction = 1;
                    }
                    else if (str.IndexOf("down") != -1)
                    {
                        direction = -1;
                    }
                    if (str.IndexOf("one") != -1)
                    {
                        meters = 1;
                    }
                    if (str.IndexOf("two") != -1)
                    {
                        meters = 2;
                    }
                    else if (str.IndexOf("three") != -1)
                    {
                        meters = 3;
                    }
                    else if (str.IndexOf("four") != -1)
                    {
                        meters = 4;
                    }
                }

                if (str.IndexOf("rotate") != -1)
                {
                    if (str.IndexOf("right") != -1)
                    {
                        direction = 1;
                    }
                    else if (str.IndexOf("left") != -1)
                    {
                        direction = -1;
                    }
                    if (str.IndexOf("fast") != -1)
                    {
                        velocity = 4;
                    }
                    if (str.IndexOf("slow") != -1)
                    {
                        velocity = 1;
                    }
                    
                }
                if (str.IndexOf("exit") != -1)
                {
                    meters = 0;
                    direction = 0;
                    velocity = 0f;
                    UnitySphinx.SetSearchModel(UnitySphinx.SearchModel.kws);
                }
                print(str);
                
            }

            if (startposition <= meters)
            {
                startposition = startposition + 0.05f;
                transform.Translate(0, 0, direction * 0.05f);
            }
            transform.Rotate(0, 0, direction * velocity * Time.deltaTime * 50);
        }
    }
}
