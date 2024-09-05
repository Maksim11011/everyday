import 'package:flutter/material.dart';

class MyTaskWidget extends StatelessWidget {
  const MyTaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Перейти к деталям заметки
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.background,
        ),
        duration: const Duration(microseconds: 600),
        child: ListTile(
          // Флажок выполнения задачи
          leading: GestureDetector(
            onTap: () {
              // Установить или снять флажок
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                      width: .8),
                ),
                child: const Icon(
                  Icons.check,
                ),
              ),
            ),
          ),
          // Заголовок записи
          title: const Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Text(
              'Выполнено',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                // decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
          // Описание заметки
          subtitle: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Описание',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
              ),

              // Д А Т А   З А М Е Т К И
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Дата',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'subdate',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
