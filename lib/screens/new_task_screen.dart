import 'package:flutter/material.dart';
import 'package:untitled1/models/completed_task_model.dart';
import 'package:untitled1/models/new_task_model.dart';
import 'package:untitled1/network_services/network_requester.dart';
import 'package:untitled1/utils/urls.dart';
import 'package:untitled1/wdgets/change_status_task.dart';
import 'package:untitled1/wdgets/deleteTask.dart';
import 'package:untitled1/wdgets/reuseable_elevated_button.dart';
import 'package:untitled1/wdgets/summery_card.dart';
import 'package:untitled1/wdgets/task_widget.dart';
import 'package:untitled1/wdgets/text_style.dart';
import 'package:http/http.dart' as http;

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  CompletedTaskModel? _completedTaskModel;

  NewTaskModel? _newTaskModel;

  //form api we get all new task
  Future getNewTaskFormApi() async {
    final response = await networkRequester().getRequester(Urls.newTask);
    if (response['status'] == 'success') {
      _newTaskModel = NewTaskModel.fromJson(response);
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getNewTaskFormApi();
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.green,
          child: Row(
            children: [
              SizedBox(
                height: 10,
              ),
              //re useable summery card
              Expanded(child: buildSummeryCard(23, "New")),
              Expanded(child: buildSummeryCard(23, "Completed")),
              Expanded(child: buildSummeryCard(23, "Progress")),
              Expanded(child: buildSummeryCard(23, "Cancelled")),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        if (_newTaskModel == null)
          Expanded(
              child: const Center(
            child: CircularProgressIndicator(),
          ))
        else
          Expanded(
            child: RefreshIndicator(
              onRefresh: ()async{
                getNewTaskFormApi();
              },

              child: ListView.builder(
                  itemCount: _newTaskModel?.data?.length,
                  itemBuilder: (context, index) {
                    final task = _newTaskModel!.data![index];

                    return TaskWidget(
                      title: task.title ?? "Unknown",
                      description: task.description ?? "Unknown",
                      type: "New",
                      date: task.createdDate ?? "Unknown",
                      onEditTap: () {
                        showModalSheetChangeStatus(context,task.sId ?? "");
                      },
                      onDeleteTap: () {
                        deleteItem(task.sId);
                      },
                    );
                  }),
            ),
          ),
      ],
    );
  }


}
