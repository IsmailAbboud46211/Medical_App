import 'package:animate_do/animate_do.dart';
import 'package:doctors_app/app/global/custom_home_card.dart';
import 'package:doctors_app/app/home/view/widgets/custom_header.dart';
import 'package:doctors_app/app/home/view/widgets/doctor_card.dart';
import 'package:doctors_app/app/home/view/widgets/symptoms_item.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];

  List<String> images = [
    Images.doctor1Image,
    Images.doctor2Image,
    Images.doctor3Image,
    Images.doctor4Image,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* Header
              ZoomIn(duration: const Duration(milliseconds: 1000), child: const CustomHeader()),
              //* sized box
              (context.height / 20).ph,
              //* cards
              ZoomIn(
                duration: const Duration(milliseconds: 1000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //* card
                    CustomHomeCard(
                      backgroundColor: AppColors.thirdColor,
                      textColor: AppColors.softWhite,
                      icon: Icons.add,
                      iconBackgroundColor: AppColors.softWhite,
                      iconColor: AppColors.thirdColor,
                      firstString: "Clinic Visit",
                      secondString: "Make an appoinitment",
                    ),
                    //* card
                    CustomHomeCard(
                      backgroundColor: AppColors.softWhite,
                      textColor: AppColors.thirdColor,
                      icon: Icons.home,
                      iconBackgroundColor: AppColors.thirdColor,
                      iconColor: AppColors.softWhite,
                      firstString: "Home Visit",
                      secondString: "Call the doctor home",
                    )
                  ],
                ),
              ),
              //* sized box
              (context.height / 20).ph,
              //* text
              ZoomIn(
                duration: const Duration(milliseconds: 1000),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "What are you symptoms ?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              //* list
              FadeInRight(
                duration: const Duration(milliseconds: 1000),
                child: SizedBox(
                  width: double.infinity,
                  height: context.height / 10,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => SymptomsItem(
                      title: symptoms[index],
                    ),
                    itemCount: symptoms.length,
                  ),
                ),
              ),

              //* text
              ZoomIn(
                duration: const Duration(milliseconds: 1000),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Popular Doctors",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              //* Grid view
              ZoomIn(
                duration: const Duration(milliseconds: 1000),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => DoctorCard(
                    imagePath: images[index],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
