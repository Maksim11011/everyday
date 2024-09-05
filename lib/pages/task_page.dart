import 'package:everyday/components/my_textformfield.dart';
import 'package:everyday/widgets/my_task_app_bar.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final TextEditingController tittleTaskController = TextEditingController();
  final TextEditingController descriptionTaskController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        // AppBar
        appBar: const MyTaskAppBar(),

        // Body
        body: SizedBox(
          child: Column(
            children: [
              const SizedBox(
                // ГЛАВНАЯ НАДПИСЬ
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Новая заметка'),
                  ],
                ),
              ),

              // НАЗВАНИЕ ЗАМЕТКИ
              SizedBox(
                child: MyTextFormField(controller: tittleTaskController),
              ),
              const SizedBox(height: 10),

              // ОПИСАНИЕ ЗАМЕТКИ
              SizedBox(
                child: MyTextFormField(
                  controller: descriptionTaskController,
                  isForDescription: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
