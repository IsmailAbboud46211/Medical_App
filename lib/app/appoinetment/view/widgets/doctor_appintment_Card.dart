import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class DoctorAppintmentCard extends StatelessWidget {
  final String imagePath;
  const DoctorAppintmentCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width / 1.5,
      height: context.height / 10,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: AppColors.softWhite, boxShadow: [
        BoxShadow(
          blurRadius: 4,
          spreadRadius: 2,
          color: AppColors.lightGrey,
        )
      ]),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(imagePath),
            ),
            title: const Text(
              "Dr. Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "1 day ago",
              style: TextStyle(color: AppColors.lightGrey),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                //* icon
                Icon(
                  Icons.star,
                  color: AppColors.yellow,
                  size: 25,
                ),
                //* text
                const Text(
                  "4.9",
                ),
              ],
            ),
          ),
          (context.height / 60).ph,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              "Many thanks to this Dear Dr, beacause he is very proLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a ga ",
            ),
          )
        ],
      ),
    );
  }
}
