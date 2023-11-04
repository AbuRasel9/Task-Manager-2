import 'package:flutter/material.dart';
import 'package:untitled1/wdgets/task_widget.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index){
      return   TaskWidget(
        title: 'This is Title',
        description: 'This is des',
        type: 'Cancelled',
        onEditTap: () {},
        onDeleteTap: () {},
        date: '1/02/22',
      );

    });
  }
}
