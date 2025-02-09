import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_theme.dart';

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today'),
        titleTextStyle: AppTheme.headline,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          child: Text('Today\'s Tasks',
          style: Theme.of(context).textTheme.headlineLarge),
        ),
      ),
    );
  }
}
