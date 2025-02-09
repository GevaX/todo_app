import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/screens/calender.dart';
import 'package:todo_app/screens/today.dart';
import 'package:todo_app/screens/upcoming.dart';
import 'package:todo_app/widgets/add_task_button.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.calendar_today), label: 'Today'),
            NavigationDestination(icon: Icon(Icons.upcoming), label: 'Upcoming'),
            NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Calender'),
          ],
        ),
      ),
      floatingActionButton: const AddTaskButton(),
    );
  }
}

class NavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Today(),
    const Upcoming(),
    const Calender(),
  ];
}
