import 'package:animate_do/animate_do.dart';
import 'package:doctors_app/app/schedule/view/widgets/schedule_item.dart';
import 'package:flutter/material.dart';

class UpcamingSchedule extends StatelessWidget {
  const UpcamingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: ZoomIn(
          duration: const Duration(milliseconds: 1000),
          child: const Column(
            children: [
              ScheduleItem(),
              ScheduleItem(),
            ],
          ),
        ),
      ),
    );
  }
}
