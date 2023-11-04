import 'package:flutter/material.dart';
import 'package:untitled1/screens/add_new_task_screen.dart';
import 'package:untitled1/screens/cancelled_task_screen.dart';
import 'package:untitled1/screens/completed_task_screen.dart';
import 'package:untitled1/screens/inprogress_task_screen.dart';
import 'package:untitled1/screens/new_task_screen.dart';
import 'package:untitled1/wdgets/reuse_able_appbar.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  var currentScreen = 0;
  List<Widget> screens = [
    const NewTaskScreen(),
    const CompletedTaskScreen(),
    const CancelledTaskScreen(),
    const InprogressTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReuseAbleAppBar(context),
      floatingActionButton:currentScreen==0? FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen()));},
        child: Icon(Icons.add),
      ):SizedBox(),
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentScreen = index;
          setState(() {});
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.green,
        currentIndex: currentScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.new_label_outlined), label: "New"),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_outline), label: "Completed"),
          BottomNavigationBarItem(
              icon: Icon(Icons.cancel_outlined), label: "Cancelled"),
          BottomNavigationBarItem(
              icon: Icon(Icons.refresh_outlined), label: "InProgress"),
        ],
      ),
    );
  }
}
