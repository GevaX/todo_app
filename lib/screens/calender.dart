import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_theme.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calender'),
        titleTextStyle: AppTheme.headline,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          child:  Text('Calender',
          style: Theme.of(context).textTheme.headlineLarge),
        ),
      ),
    );
  }
}
