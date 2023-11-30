import 'package:flutter/material.dart';

import 'text_style.dart';
class ChangeTaskStatus{
  static showModalSheetChangeStatus1(context,title1,title2,title3){
    showModalBottomSheet(context: context, builder: (context){
      return Padding(

        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Change status of the task",style: titleTextStyle,),
            CheckboxListTile(
                title:Text(title1),
                value: true, onChanged: (value){}),
            CheckboxListTile(
                title:Text(title2),
                value: true, onChanged: (value){}),
            CheckboxListTile(
                title:Text(title3),
                value: true, onChanged: (value){}),
          ],
        ),
      );
    });
  }

}