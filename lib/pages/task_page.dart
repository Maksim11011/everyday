import 'package:everyday/widgets/my_task_app_bar.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyTaskAppBar(),
    );
  }
}
