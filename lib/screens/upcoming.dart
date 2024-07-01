import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_theme.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming'),
        titleTextStyle: AppTheme.headline,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          child: Text('Upcoming Tasks',
          style: Theme.of(context).textTheme.headlineLarge),
        ),
      ),
    );
  }
}
