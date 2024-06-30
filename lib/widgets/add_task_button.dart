import 'package:flutter/material.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print('object');
      },
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Colors.black,
      child: const Icon(Icons.add),
    );
  }
}
