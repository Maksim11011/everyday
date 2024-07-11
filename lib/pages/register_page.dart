import 'package:everyday/components/my_button.dart';
import 'package:everyday/components/my_textfield.dart';
import 'package:everyday/generated/l10n.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Контроллеры Почты и пароля
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                'Регистрация',
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
                hintText: 'Подтвердите пароль',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // Кнопка создания аккаунта
              MyButton(
                onTap: () {},
                text: 'Создать аккаунт',
              ),

              const SizedBox(height: 20),

              // Кнопка входа
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'У вас есть аккаунт?',
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Войти',
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
