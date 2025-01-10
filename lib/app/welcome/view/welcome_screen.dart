import 'package:animate_do/animate_do.dart';
import 'package:doctors_app/app/global/custom_app_bar.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/routing_extenstion.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/router/route_name.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softWhite,
      appBar: customAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //* sixed box
            (context.height / 20).ph,
            //* image
            FadeInLeft(
              duration: const Duration(milliseconds: 1000),
              child: Image.asset(Images.doctorsImage),
            ),
            //* sixed box
            (context.height / 12).ph,
            //* text
            FadeInRight(
              duration: const Duration(milliseconds: 1000),
              child: Text(
                "DOCTORS APPOINMENT",
                style: TextStyle(
                  letterSpacing: 2,
                  wordSpacing: 2,
                  color: AppColors.thirdColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            //* sixed box
            (context.height / 40).ph,
            //* text
            FadeInRight(
              duration: const Duration(milliseconds: 1000),
              child: Text(
                "Appoint Your Doctor",
                style: TextStyle(
                  letterSpacing: 2,
                  wordSpacing: 2,
                  color: AppColors.fourthColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            //* sixed box
            (context.height / 30).ph,
            //* buttons
            FadeIn(
              duration: const Duration(milliseconds: 1000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //* log in
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.lightGrey,
                          spreadRadius: 0.5,
                          blurRadius: 20,
                          offset: const Offset(0, 1.5),
                        )
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () => context.go(
                        routeName: RoutesNames.logInScreen,
                        replacement: true,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.seconderyColor,
                      ),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: AppColors.softWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  //* sign up
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.lightGrey,
                          spreadRadius: 0.5,
                          blurRadius: 20,
                          offset: const Offset(0, 1.5),
                        )
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () => context.go(
                        routeName: RoutesNames.signUpScreen,
                        replacement: true,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.softWhite,
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColors.seconderyColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
