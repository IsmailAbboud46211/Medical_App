import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class CustomHomeCard extends StatelessWidget {
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final Color textColor;
  final Color iconColor;
  final String firstString;
  final String secondString;
  final IconData icon;
  const CustomHomeCard({
    super.key,
    required this.backgroundColor,
    required this.firstString,
    required this.secondString,
    required this.textColor,
    required this.icon,
    required this.iconBackgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            spreadRadius: 4,
            blurRadius: 6,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* icon
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconBackgroundColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 35,
            ),
          ),
          //* sized box
          (context.height / 40).ph,
          //* text
          Text(
            firstString,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          (context.height / 100).ph,
          //* text
          Text(
            secondString,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
