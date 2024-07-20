import 'package:everyday/components/my_drawer.dart';
import 'package:everyday/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_rounded),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: MyDrawer(),
    );
  }
}
