import 'package:animate_do/animate_do.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.softWhite,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              backgroundColor: AppColors.thirdColor,
              leadingWidth: 30,
              title: ZoomIn(
                duration: const Duration(milliseconds: 1000),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(Images.doctor1Image),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Dr. Doctor Name",
                          style: TextStyle(
                            color: AppColors.softWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              actions: [
                ZoomIn(
                  duration: const Duration(milliseconds: 1000),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, right: 20),
                    child: Icon(
                      Icons.call,
                      color: AppColors.softWhite,
                    ),
                  ),
                ),
                ZoomIn(
                  duration: const Duration(milliseconds: 1000),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, right: 20),
                    child: Icon(
                      Icons.video_call,
                      color: AppColors.softWhite,
                    ),
                  ),
                ),
                ZoomIn(
                  duration: const Duration(milliseconds: 1000),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, right: 20),
                    child: Icon(
                      Icons.more_vert,
                      color: AppColors.softWhite,
                    ),
                  ),
                )
              ],
            )),
        body: ZoomIn(
          duration: const Duration(milliseconds: 1000),
          child: Column(
            children: [
              //* sized box
              (context.height / 40).ph,
              BubbleSpecialThree(
                text: 'Added iMessage shape bubbles',
                color: AppColors.fourthColor,
                tail: false,
                textStyle: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              //* sized box
              (context.height / 40).ph,
              BubbleSpecialThree(
                text: 'Please try and give some feedback on it!',
                color: AppColors.fourthColor,
                tail: true,
                textStyle: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              //* sized box
              (context.height / 40).ph,
              const BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              //* sized box
              (context.height / 40).ph,
              const BubbleSpecialThree(
                text: "I tried. It's awesome!!!",
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              //* sized box
              (context.height / 40).ph,
              const BubbleSpecialThree(
                text: "Thanks",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              //* spcaer
              const Spacer(),
              MessageBar(
                onSend: (_) => (_),
                actions: [
                  InkWell(
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: InkWell(
                      child: Icon(
                        Icons.camera_alt,
                        color: AppColors.thirdColor,
                        size: 24,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
