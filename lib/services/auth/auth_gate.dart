import 'package:everyday/pages/home_page.dart';
import 'package:everyday/services/auth/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Пользователь вошел в систему
          if (snapshot.hasData) {
            return const HomePage();
          }

          // Пользователь НЕ вошел в систему
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
