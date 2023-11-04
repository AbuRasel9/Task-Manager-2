
import 'package:flutter/material.dart';
import 'package:untitled1/screens/update_profile_screen.dart';
AppBar ReuseAbleAppBar(context,{bool isTapppable=true}) {
  return AppBar(
      backgroundColor: Colors.greenAccent,
      title:  ListTile(
        onTap: (){
          if(isTapppable== false){
            return;
          }
          Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfileScreen()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.green.shade500,
          child: Icon(Icons.person),
        ),
        title: Text("Rasel Ahamed"),
        subtitle: Text("aburaselahamed99@gmail.com"),
      )
  );
}
