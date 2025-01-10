import 'package:doctors_app/app/chat/view/chat_screen.dart';
import 'package:doctors_app/app/home/view/home_screen.dart';
import 'package:doctors_app/app/schedule/view/schedule_screen.dart';
import 'package:doctors_app/app/settings/view/settings_screen.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

int currebtIndex = 0;
List<Widget> screens = [
  HomeScreen(),
  ChatScreen(),
  const ScheduleScreen(),
  const SettingsScreen(),
];

class _ControllerState extends State<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currebtIndex],
      bottomNavigationBar: Container(
        height: context.height / 10,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.thirdColor,
          unselectedItemColor: AppColors.primaryColor,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: currebtIndex,
          onTap: (index) {
            setState(() {
              currebtIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Schdule"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
