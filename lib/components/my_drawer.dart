import 'package:everyday/components/my_drawer_tile.dart';
import 'package:everyday/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // Логотип
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Icon(
              Icons.lock_open_rounded,
              size: 50,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Divider(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),

          // Главный экран
          MyDrawerTile(
            text: 'Главный экран',
            icon: Icons.home,
            onTap: () {},
          ),

          // Настройки
          MyDrawerTile(
            text: 'Настройки',
            icon: Icons.settings,
            onTap: () => Navigator.pop(context),
          ),

          const Spacer(),

          // Кнопка выхода
          MyDrawerTile(
            text: 'Выход',
            icon: Icons.exit_to_app,
            onTap: logout,
          ),

          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
