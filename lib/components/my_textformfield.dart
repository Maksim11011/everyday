import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
    this.isForDescription = false,
  });

  final TextEditingController controller;
  final bool isForDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: ListTile(
            title: TextFormField(
              controller: controller,
              maxLines: !isForDescription ? 3 : null,
              cursorHeight: isForDescription ? 30 : null,
              decoration: InputDecoration(
                border: isForDescription ? InputBorder.none : null,
                counter: Container(),
                prefixIcon:
                    isForDescription ? const Icon(Icons.bookmark_border) : null,
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.tertiary),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              onFieldSubmitted: (value) {},
              onChanged: (value) {},
            ),
          ),
        ),
      ],
    );
  }
}
