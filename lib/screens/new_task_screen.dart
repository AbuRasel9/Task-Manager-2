import 'package:flutter/material.dart';
import 'package:untitled1/wdgets/summery_card.dart';
import 'package:untitled1/wdgets/task_widget.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(height: 10,),
            //re useable summery card
            Expanded(child: buildSummeryCard(23, "New")),
            Expanded(child: buildSummeryCard(23, "Completed")),
            Expanded(child: buildSummeryCard(23, "Progress")),
            Expanded(child: buildSummeryCard(23, "Cancelled")),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        TaskWidget(
          title: 'This is Title',
          description: 'This is des',
          type: 'New',
          onEditTap: () {},
          onDeleteTap: () {},
          date: '1/02/22',
        ),
        TaskWidget(
          title: 'This is Title',
          description: 'This is des',
          type: 'New',
          onEditTap: () {},
          onDeleteTap: () {},
          date: '1/02/22',
        ),
        TaskWidget(
          title: 'This is Title',
          description: 'This is des',
          type: 'New',
          onEditTap: () {},
          onDeleteTap: () {},
          date: '1/02/22',
        ),
      ],
    );
  }
}

