import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //* text
        const Text(
          "About Doctor",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        //* sized box
        (context.height / 40).ph,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration:
              BoxDecoration(color: AppColors.softWhite, borderRadius: BorderRadius.circular(25), boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 2,
              color: AppColors.lightGrey,
            ),
          ]),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                //* list tile
                const ListTile(
                  title: Text(
                    "Dr. Doctor name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(Images.doctor1Image),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),
                ),
                //* date and time texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text("1/1/2025"),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(Icons.access_time_filled),
                        Text("10:30"),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.green,
                          ),
                        ),
                        //* sized box
                        (context.width / 80).pw,
                        const Text("Confirmed"),
                      ],
                    ),
                  ],
                ),
                //* sized box
                (context.height / 40).ph,
                //* buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: context.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.softWhite,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: AppColors.lightGrey,
                            )
                          ],
                        ),
                        child: const Center(child: Text("Canceld")),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: context.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.seconderyColor,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: AppColors.lightGrey,
                            )
                          ],
                        ),
                        child: Center(
                            child: Text(
                          "Reschedule",
                          style: TextStyle(color: AppColors.softWhite),
                        )),
                      ),
                    )
                  ],
                ),
                //* sized box
                (context.height / 40).ph,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
