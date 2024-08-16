import 'package:everyday/pages/task_page.dart';
import 'package:flutter/material.dart';

class MyFab extends StatelessWidget {
  const MyFab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TaskPage(),
          ),
        );
      },
      child: Material(
        borderRadius: BorderRadius.circular(28),
        elevation: 5,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(28),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
