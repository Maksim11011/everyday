import 'package:everyday/components/my_textfield.dart';
import 'package:everyday/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Логотип
              const Icon(
                Icons.crop_original,
                size: 100,
              ),

              const SizedBox(height: 25),

              // Приветственное сообщение
              Text(
                S.of(context).welcome,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              // Поле ввода email
              MyTextField(
                controller: emailController,
                hintText: S.of(context).Email,
                obscureText: false,
              ),

              const SizedBox(height: 25),

              // Поля ввода пароля
              MyTextField(
                controller: passwordController,
                hintText: S.of(context).Password,
                obscureText: true,
              ),

              // Кнопка входа

              // Кнопка регистрации
            ],
          ),
        ),
      ),
    );
  }
}
