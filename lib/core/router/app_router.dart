import 'package:doctors_app/app/appoinetment/view/appoinetment_screen.dart';
import 'package:doctors_app/app/auth/log_in/view/log_in_screen.dart';
import 'package:doctors_app/app/auth/sign_up/view/sign_up_screen.dart';
import 'package:doctors_app/app/controller/view/controller.dart';
import 'package:doctors_app/app/home/view/home_screen.dart';
import 'package:doctors_app/app/conversation/view/conversation_screen.dart';
import 'package:doctors_app/app/settings/view/settings_screen.dart';
import 'package:doctors_app/app/welcome/view/welcome_screen.dart';
import 'package:doctors_app/core/router/route_name.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGeneratedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );

      case RoutesNames.logInScreen:
        return MaterialPageRoute(
          builder: (_) => const LogInScreen(),
        );

      case RoutesNames.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );

      case RoutesNames.controllerScreen:
        return MaterialPageRoute(
          builder: (_) => const Controller(),
        );

      case RoutesNames.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );

      case RoutesNames.chatScreen:
        return MaterialPageRoute(
          builder: (_) => const ConversationScreen(),
        );

      case RoutesNames.appointmentScreen:
        return MaterialPageRoute(
          builder: (_) => AppoinetmentScreen(),
        );

      case RoutesNames.settingsScreen:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );
/*
      case RoutesNames.travelDetail:
        return MaterialPageRoute(
          builder: (_) => PlaceDetailScreen(
            travelDestination: settings.arguments as TravelDestination,
          ),
        );*/
    }

    return null;
  }
}
