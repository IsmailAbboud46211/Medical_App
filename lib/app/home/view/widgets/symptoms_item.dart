import 'package:doctors_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class SymptomsItem extends StatelessWidget {
  final String title;
  const SymptomsItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: AppColors.softWhite,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            blurRadius: 4,
            spreadRadius: 2,
          )
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
