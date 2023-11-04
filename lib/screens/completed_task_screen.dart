import 'package:flutter/material.dart';
import 'package:untitled1/wdgets/task_widget.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){

      return   TaskWidget(
        title: 'This is Title',
        description: 'This is des',
        type: 'Completed',
        onEditTap: () {},
        onDeleteTap: () {},
        date: '1/02/22',
      );

    });
  }
}
