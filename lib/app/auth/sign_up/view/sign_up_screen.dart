import 'package:animate_do/animate_do.dart';
import 'package:doctors_app/app/global/custom_app_bar.dart';
import 'package:doctors_app/app/global/custom_text_field.dart';
import 'package:doctors_app/core/extension/media_query.dart';
import 'package:doctors_app/core/extension/routing_extenstion.dart';
import 'package:doctors_app/core/extension/sized_box.dart';
import 'package:doctors_app/core/router/route_name.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:doctors_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

TextEditingController emailText = TextEditingController();
TextEditingController nameText = TextEditingController();
TextEditingController password = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softWhite,
      appBar: customAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
              (context.height / 20).ph,
              //* E-mail text field
              FadeInRight(
                duration: const Duration(milliseconds: 1000),
                child: CustomTextFormField(
                  controller: emailText,
                  labekText: "E-mail",
                  hintText: "Please Eneter your E-mail",
                  textInputText: TextInputType.emailAddress,
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              //* sixed box
              (context.height / 40).ph,
              //* Password text field
              FadeInRight(
                duration: const Duration(milliseconds: 1000),
                child: CustomTextFormField(
                  controller: nameText,
                  labekText: "Name",
                  hintText: "Please Eneter your Name",
                  textInputText: TextInputType.text,
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
              //* sixed box
              (context.height / 40).ph,
              //* Password text field
              FadeInRight(
                duration: const Duration(milliseconds: 1000),
                child: CustomTextFormField(
                  controller: password,
                  labekText: "Password",
                  hintText: "Please Eneter your Password",
                  textInputText: TextInputType.text,
                  prefixIcon: const Icon(Icons.password),
                  isPasswordTextField: true,
                ),
              ),
              //* sixed box
              (context.height / 40).ph,
              FadeIn(
                duration: const Duration(milliseconds: 1000),
                child: GestureDetector(
                  //* sign up logic
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: context.height / 20,
                    decoration: BoxDecoration(
                      color: AppColors.seconderyColor,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.lightGrey,
                          spreadRadius: 0.5,
                          blurRadius: 20,
                          offset: const Offset(0, 1.5),
                        )
                      ],
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: AppColors.softWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              //* sixed box
              (context.height / 40).ph,
              //* texts
              FadeIn(
                duration: const Duration(milliseconds: 1000),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //*text
                    const Text(
                      "Already have an account ?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    //* text button
                    TextButton(
                      onPressed: () => context.go(
                        routeName: RoutesNames.logInScreen,
                        replacement: true,
                      ),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: AppColors.fourthColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
