import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //* Text
          Text(
            "Hello Ismail",
            style: TextStyle(
              color: AppColors.fourthColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          //* image
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Images.doctor1Image),
          )
        ],
      ),
    );
  }
}
