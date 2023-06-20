import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// State Full Widget
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = false;
  String ?soundMode;
  String active="disactive";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // app Bar
        appBar: AppBar(
          backgroundColor: Colors.black54,
        ),
        // Drawer
        drawer: Drawer(
          backgroundColor: Colors.black26,
        ),
        // Body
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              // Switch
              SwitchListTile(
                value: selected,
                onChanged: (val) {
                  setState(() {
                    selected = val;
                    if (selected == false) {
                      active = "disactive";
                    } else {
                      active = "active";
                      soundMode="";
                    }
                  });
                },
                title: Text(
                  "$active notify",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                secondary: Icon(Icons.notifications,color: Colors.blue,),inactiveTrackColor: Colors.white,
                tileColor: Colors.blue,
              ),
              // radio sound mode 
              RadioListTile(value: "mute", groupValue: "$soundMode", onChanged: (val){
                setState(() {
                  soundMode = val as String?;
                  if (active == "disactive"){
                    soundMode="1";
                  }
                });
              }
              ,controlAffinity: ListTileControlAffinity.trailing,contentPadding: EdgeInsets.only(left: 17,right: 20),
              title: Text("Mute",style: TextStyle(color: Colors.white,fontSize: 20),),
              secondary: Icon(Icons.volume_mute,color: Colors.blue,),
              selected: soundMode == "Mute" ? true:false,activeColor: Colors.blue,
              ),
              RadioListTile(value: "Viberation", groupValue: "$soundMode", onChanged: (val){
                setState(() {
                  soundMode = val as String?;
                  if (active == "disactive"){
                    soundMode="1";
                    
                  }
                });
              }
              ,controlAffinity: ListTileControlAffinity.trailing,contentPadding: EdgeInsets.only(left: 17,right: 20),
              title: Text("Viberation",style: TextStyle(color: Colors.white,fontSize: 20),),
              secondary: Icon(Icons.volume_off,color: Colors.blue,),
              selected: soundMode == "Viberation" ? true:false,activeColor: Colors.blue,
              ),
              RadioListTile(value: "Normal", groupValue: "$soundMode", onChanged: (val){
                setState(() {
                  soundMode = val as String?;
                  if (active == "disactive"){
                    soundMode="1";
                  }
                });
              }
              ,controlAffinity: ListTileControlAffinity.trailing,contentPadding: EdgeInsets.only(left: 17,right: 20),
              title: Text("Normal",style: TextStyle(color: Colors.white,fontSize: 20),),
              secondary: Icon(Icons.volume_up,color: Colors.blue,),
              selected: soundMode == "Normal" ? true:false,activeColor: Colors.blue,
              )
            ],
          ),
        ));
  }
}
