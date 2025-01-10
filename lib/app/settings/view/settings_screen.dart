import 'package:animate_do/animate_do.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softWhite,
      body: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40, top: 40),
        child: ZoomIn(
          duration: const Duration(milliseconds: 1000),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* text
              Text(
                "Settings",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.primaryColor,
                ),
              ),
              //* sized box
              (context.height / 40).ph,
              //* lsit tile
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(Images.doctor1Image),
                  radius: 25,
                ),
                title: Text(
                  "Dr. Doctor Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("profile"),
              ),
              //* sized box
              (context.height / 40).ph,
              const Divider(),
              //* sized box
              (context.height / 40).ph,
              //* setting item
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.babyBlue,
                  ),
                  child: Icon(
                    CupertinoIcons.person,
                    size: 35,
                    color: AppColors.deepBlue,
                  ),
                ),
                title: const Text(
                  "Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              //* sized box
              (context.height / 40).ph,
              //* setting item
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.deepBlue,
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 35,
                    color: AppColors.softWhite,
                  ),
                ),
                title: const Text(
                  "Notifications",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              //* sized box
              (context.height / 40).ph,
              //* setting item
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.thirdColor,
                  ),
                  child: Icon(
                    Icons.privacy_tip_outlined,
                    size: 35,
                    color: AppColors.softWhite,
                  ),
                ),
                title: const Text(
                  "Privacy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              (context.height / 40).ph,
              //* setting item
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.green,
                  ),
                  child: Icon(
                    Icons.settings_suggest_outlined,
                    size: 35,
                    color: AppColors.softWhite,
                  ),
                ),
                title: const Text(
                  "General",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              (context.height / 40).ph,
              //* setting item
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.softOrnage,
                  ),
                  child: Icon(
                    Icons.info,
                    size: 35,
                    color: AppColors.softWhite,
                  ),
                ),
                title: const Text(
                  "About us",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              (context.height / 40).ph,
              //* setting item
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                  child: Icon(
                    Icons.logout,
                    size: 35,
                    color: AppColors.softWhite,
                  ),
                ),
                title: const Text(
                  "Log out",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
