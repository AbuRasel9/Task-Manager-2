import 'package:flutter/material.dart';
import 'package:untitled1/models/CancelledTaskModel.dart';
import 'package:untitled1/network_services/network_requester.dart';
import 'package:untitled1/screens/new_task_screen.dart';
import 'package:untitled1/utils/urls.dart';
import 'package:untitled1/wdgets/task_widget.dart';
import 'package:http/http.dart' as http;

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  CancelledTaskModel? _cancelledTaskModel;

  Future cancelledTastFormApi() async {
    final response = await networkRequester().getRequester(Urls.cancelledTask);
    if (response['status'] == "success") {
      _cancelledTaskModel = CancelledTaskModel.fromJson(response);
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      cancelledTastFormApi();
    });
  }

  //Item delete operation
  Future deleteItem(id) async {
    final response = await networkRequester()
        .getRequester("https://task.teamrabbil.com/api/v1/deleteTask/$id");
    if (response['status'] == 'success') {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Delete Item Successfull")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _cancelledTaskModel?.data?.length ?? 0,
        itemBuilder: (context, index) {
          final task = _cancelledTaskModel!.data![index];
          return TaskWidget(
            title: task.title ?? "Unknown",
            description: task.description ?? "unknown",
            type: 'Cancelled',
            onEditTap: () {},
            onDeleteTap: () {
              deleteItem(task.sId);
            },
            date: task.createdDate ?? "Unknown",
          );
        });
  }
}
