import 'package:doctors_app/core/extension/routing_extenstion.dart';
import 'package:doctors_app/core/router/route_name.dart';
import 'package:doctors_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required BuildContext context}) => AppBar(
      backgroundColor: AppColors.softWhite,
      elevation: 0,
      actions: [
        TextButton(
            onPressed: () => context.go(
                  routeName: RoutesNames.controllerScreen,
                  replacement: true,
                ),
            child: Text(
              "Skip",
              style: TextStyle(
                color: AppColors.seconderyColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ))
      ],
    );
