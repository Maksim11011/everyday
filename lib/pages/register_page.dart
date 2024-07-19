// ignore_for_file: use_build_context_synchronously

import 'package:everyday/components/my_button.dart';
import 'package:everyday/components/my_textfield.dart';
import 'package:everyday/generated/l10n.dart';
import 'package:everyday/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Контроллеры почты и пароля
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Метод регистрации
  void register() async {
    // Получить экземпляр аутентификации
    final _authService = AuthService();

    // Пароль совпадает -> создать пользователя
    if (passwordController.text == confirmPasswordController.text) {
      // Попробовать создать пользователя
      try {
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      }

      // Показать любые ошибки
      catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }

    // Пароль НЕ совпадает -> показать ошибку
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Пароли не совпадают!'),
        ),
      );
    }
  }

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
                S.of(context).Register,
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

              const SizedBox(height: 25),

              // Поля подтверждения пароля
              MyTextField(
                controller: confirmPasswordController,
                hintText: S.of(context).ConfirmPassword,
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // Кнопка создания аккаунта
              MyButton(
                onTap: register,
                text: S.of(context).CreateAnAccount,
              ),

              const SizedBox(height: 20),

              // Кнопка входа
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).AlreadyHaveAnAccount,
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      S.of(context).SignIn,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
