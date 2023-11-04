import 'package:flutter/material.dart';
import 'package:untitled1/wdgets/task_widget.dart';

class InprogressTaskScreen extends StatefulWidget {
  const InprogressTaskScreen({super.key});

  @override
  State<InprogressTaskScreen> createState() => _InprogressTaskScreenState();
}

class _InprogressTaskScreenState extends State<InprogressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
      return   TaskWidget(
        title: 'This is Title',
        description: 'This is des',
        type: 'Inprogress',
        onEditTap: () {},
        onDeleteTap: () {},
        date: '1/02/22',
      );

    });
  }
}
