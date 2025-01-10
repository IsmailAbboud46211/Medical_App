import 'package:animate_do/animate_do.dart';
import 'package:doctors_app/app/schedule/view/widgets/upcaming_schedule.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int buttonIndex = 0;
  List<Widget> titles = [
    const UpcamingSchedule(),
    const Center(
      child: Text("Completed"),
    ),
    const Center(
      child: Text("Canceled"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* text
            ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: Text(
                "Schedule",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            //* sized box
            (context.height / 40).ph,
            //* buttons
            ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: Row(
                children: [
                  //* button
                  InkWell(
                    onTap: () {
                      setState(() {
                        buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: buttonIndex == 0 ? AppColors.thirdColor : AppColors.softWhite,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: AppColors.lightGrey,
                          )
                        ],
                      ),
                      child: Text(
                        "Upcoming",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: buttonIndex == 0 ? AppColors.softWhite : AppColors.softDark,
                        ),
                      ),
                    ),
                  ),
                  //* button
                  InkWell(
                    onTap: () {
                      setState(() {
                        buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: buttonIndex == 1 ? AppColors.thirdColor : AppColors.softWhite,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: AppColors.lightGrey,
                          )
                        ],
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: buttonIndex == 1 ? AppColors.softWhite : AppColors.softDark,
                        ),
                      ),
                    ),
                  ),
                  //* button
                  InkWell(
                    onTap: () {
                      setState(() {
                        buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: buttonIndex == 2 ? AppColors.thirdColor : AppColors.softWhite,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: AppColors.lightGrey,
                          )
                        ],
                      ),
                      child: Text(
                        "Canceled",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: buttonIndex == 2 ? AppColors.softWhite : AppColors.softDark,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //* sized box
            (context.height / 40).ph,
            titles[buttonIndex],
          ],
        ),
      ),
    );
  }
}
