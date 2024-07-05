import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return (GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.secondary),
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    ));
  }
}
