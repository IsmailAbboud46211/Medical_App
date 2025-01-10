import 'package:animate_do/animate_do.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/routing_extenstion.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/router/route_name.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  //* images
  List<String> images = [
    Images.doctor1Image,
    Images.doctor2Image,
    Images.doctor3Image,
    Images.doctor4Image,
    Images.doctor1Image,
    Images.doctor2Image,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* sized box
            (context.width / 40).ph,
            //* text
            ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Chats",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            //* search bar
            ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: Center(
                child: Container(
                  width: context.width / 1.1,
                  height: context.height / 20,
                  decoration: BoxDecoration(
                      color: AppColors.softWhite,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 2,
                          color: AppColors.lightGrey,
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Search....",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const Icon(Icons.search)
                    ],
                  ),
                ),
              ),
            ),
            //* text
            ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "Active Now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),

            //* list of circle
            FadeInRight(
              duration: const Duration(milliseconds: 1000),
              child: SizedBox(
                height: context.height / 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.softWhite,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: AppColors.lightGrey,
                          )
                        ],
                      ),
                      child: Stack(
                        textDirection: TextDirection.rtl,
                        children: [
                          Center(
                            child: SizedBox(
                              width: 65,
                              height: 65,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(2),
                            padding: const EdgeInsets.all(3),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppColors.softWhite,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.green,
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
            //* text
            ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Text(
                  "Recent chats",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            ZoomIn(
              duration: const Duration(milliseconds: 1000),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) => ListTile(
                        minVerticalPadding: 15,
                        onTap: () => context.go(routeName: RoutesNames.chatScreen),
                        title: const Text(
                          "Dr. Doctor Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: const Text(
                          "Hello Doctor are you there ?",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(images[index]),
                        ),
                        trailing: Text(
                          "12:00 am",
                          style: TextStyle(color: AppColors.lightGrey),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
