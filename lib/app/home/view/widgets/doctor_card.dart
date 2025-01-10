import 'package:doctors_app/core/extension/routing_extenstion.dart';
import 'package:doctors_app/core/router/route_name.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String imagePath;
  const DoctorCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(
        routeName: RoutesNames.appointmentScreen,
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 15),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //* image
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(imagePath),
            ),
            //* text
            const Text(
              "Doctor Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            //* text
            const Text("Therapist"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.yellow,
                ),
                const Text("4.9")
              ],
            )
          ],
        ),
      ),
    );
  }
}
