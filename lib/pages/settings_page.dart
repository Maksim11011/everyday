import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          'Настройки',
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
    );
  }
}
