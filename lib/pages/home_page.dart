import 'package:everyday/components/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  /* void logout() {
    final authService = AuthService();
    authService.signOut();
    import 'package:everyday/services/auth/auth_service.dart';
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
    );
  }
}
