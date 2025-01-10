import 'package:animate_do/animate_do.dart';
import 'package:doctors_app/app/appoinetment/view/widgets/doctor_appintment_Card.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/routing_extenstion.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// ignore: must_be_immutable
class AppoinetmentScreen extends StatelessWidget {
  AppoinetmentScreen({super.key});
  List<String> images = [
    Images.doctor1Image,
    Images.doctor2Image,
    Images.doctor3Image,
    Images.doctor4Image,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.thirdColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.softWhite,
          ),
        ),
        actions: [
          Icon(
            Icons.more_vert_outlined,
            color: AppColors.softWhite,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //* image
              FadeInLeft(
                duration: const Duration(milliseconds: 1000),
                child: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(Images.doctor1Image),
                ),
              ),
              //* sized box
              (context.height / 60).ph,
              //* text
              ZoomIn(
                duration: const Duration(milliseconds: 1000),
                child: Text(
                  "Dr .  Doctor Name",
                  style: TextStyle(
                    color: AppColors.softWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              //* sized box
              (context.height / 60).ph,
              //* text
              ZoomIn(
                duration: const Duration(milliseconds: 1000),
                child: Text(
                  "Therapist",
                  style: TextStyle(
                    color: AppColors.softWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //* sized box
              (context.height / 60).ph,
              FadeInRight(
                duration: const Duration(milliseconds: 1000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //* icon
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.fourthColor,
                      ),
                      child: Icon(
                        size: 25,
                        Icons.call,
                        color: AppColors.softWhite,
                      ),
                    ),
                    //* sized box
                    (context.height / 60).pw,
                    //* icon
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.fourthColor,
                      ),
                      child: Icon(
                        CupertinoIcons.chat_bubble_text_fill,
                        size: 25,
                        color: AppColors.softWhite,
                      ),
                    ),
                  ],
                ),
              ),
              //* sized box
              (context.height / 40).ph,
              //* background
              Container(
                width: double.infinity,
                height: context.height / 1.5,
                decoration: BoxDecoration(
                    color: AppColors.softWhite,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      //* text
                      ZoomIn(
                        duration: const Duration(milliseconds: 1000),
                        child: Text(
                          "About Doctor",
                          style: TextStyle(
                            color: AppColors.softDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      //* sized box
                      (context.height / 40).ph,
                      ZoomIn(
                        duration: const Duration(milliseconds: 1000),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
                          style: TextStyle(color: AppColors.lightGrey),
                        ),
                      ),

                      //* text
                      FadeInRight(
                        duration: const Duration(milliseconds: 1000),
                        child: Row(
                          children: [
                            Text(
                              "Reviews",
                              style: TextStyle(
                                color: AppColors.softDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            //* sized box
                            (context.height / 40).pw,
                            //* icon
                            Icon(
                              Icons.star,
                              color: AppColors.yellow,
                              size: 25,
                            ),
                            //* text
                            const Text(
                              "4.9",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            //* sized box
                            (context.height / 40).pw,
                            Text(
                              "(123)",
                              style: TextStyle(
                                color: AppColors.thirdColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  //* see all reviews
                                },
                                child: Text(
                                  "See all",
                                  style: TextStyle(
                                    color: AppColors.fourthColor,
                                  ),
                                ))
                          ],
                        ),
                      ),

                      //* list
                      FadeInRight(
                        duration: const Duration(milliseconds: 1000),
                        child: SizedBox(
                          width: double.infinity,
                          height: context.height / 5,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: images.length,
                              itemBuilder: (context, index) => DoctorAppintmentCard(
                                    imagePath: images[index],
                                  )),
                        ),
                      ),

                      ZoomIn(
                        duration: const Duration(milliseconds: 1000),
                        child: Text(
                          "Location",
                          style: TextStyle(
                            color: AppColors.softDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      ZoomIn(
                        duration: const Duration(milliseconds: 1000),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.thirdColor,
                            ),
                            child: Icon(
                              Iconsax.location,
                              color: AppColors.softWhite,
                            ),
                          ),
                          title: const Text(
                            "New yourk , first streat ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "adress line to medical center",
                            style: TextStyle(color: AppColors.lightGrey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ZoomIn(
        duration: const Duration(milliseconds: 1000),
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: context.height / 10,
          decoration: BoxDecoration(
            color: AppColors.softWhite,
            boxShadow: [
              BoxShadow(
                color: AppColors.lightGrey,
                spreadRadius: 2,
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Costs",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "\$100",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.thirdColor,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              //* sized box
              // (context.height / 50).ph,
              //* button
              InkWell(
                onTap: () {
                  //* move to another page
                },
                child: Container(
                  width: double.infinity,
                  height: context.height / 28,
                  decoration: BoxDecoration(
                    color: AppColors.thirdColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Book Apppointment",
                      style: TextStyle(
                        color: AppColors.softWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
