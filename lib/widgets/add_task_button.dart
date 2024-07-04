import 'package:flutter/material.dart';

import 'add_task_menu.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.black,
      child: const Icon(Icons.add),
      onPressed: () => _showAddTaskMenu(context)
    );
  }
  void _showAddTaskMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      enableDrag: false,
      builder: (BuildContext context) {
        return const AddTaskMenu(); // Returns your BottomSheet widget
      },
    );
  }
}
