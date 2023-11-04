import 'package:flutter/material.dart';
import 'package:untitled1/wdgets/background_image.dart';
import 'package:untitled1/wdgets/reuse_able_appbar.dart';
import 'package:untitled1/wdgets/reuseable_elevated_button.dart';
import 'package:untitled1/wdgets/text_feild_style.dart';
import 'package:untitled1/wdgets/text_style.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseAbleAppBar(context),
      body: BackgroundImage(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Add New Task",style: titleTextStyle,),
              SizedBox(height: 16,),
              TextFormField(
                decoration:textFeildStyle("Subject"),
                validator: (String?value){
                  return;
                },
              ),
              const SizedBox(height: 15,),
              TextFormField(
                decoration: textFeildStyle("Description"),
                validator: (String?value){
                  return;
                },
              ),
              const SizedBox(height: 15,),
              ReuseableElevatedButton(onTap: (){},)
            ],
          ),
        ),
      )),
    );
  }
}
