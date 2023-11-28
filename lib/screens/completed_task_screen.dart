import 'package:flutter/material.dart';
import 'package:untitled1/models/completed_task_model.dart';
import 'package:untitled1/network_services/network_requester.dart';
import 'package:untitled1/utils/urls.dart';
import 'package:untitled1/wdgets/task_widget.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  CompletedTaskModel? _completedTaskModel;

  Future completedTaskFormApi() async {
    final response=await networkRequester().getRequester(Urls.completedTask);
    if(response["status"]=="success"){
      _completedTaskModel=CompletedTaskModel.fromJson(response);
      setState(() {

      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      completedTaskFormApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _completedTaskModel?.data?.length ??0,

        itemBuilder: (context,index){
        final task=_completedTaskModel!.data![index];


      return   Column(
        children: [
          if(_completedTaskModel ==null)
            const Center(child: CircularProgressIndicator(),)
          else
            TaskWidget(
              title: task.title ?? "Unknown",
              description: task.description ?? "Unknown",
              type: 'Completed',
              onEditTap: () {},
              onDeleteTap: () {},
              date: task.createdDate ?? "Unknown",
            ),
        ],
      );

    });
  }
}
