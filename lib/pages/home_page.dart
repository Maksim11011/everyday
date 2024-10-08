import 'package:everyday/components/my_drawer.dart';
import 'package:everyday/components/my_fab.dart';
import 'package:everyday/services/auth/auth_service.dart';
import 'package:everyday/widgets/my_task_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const MyTaskWidget();
          }),
      floatingActionButton: const MyFab(),
    );
  }
}
