import 'package:flutter/material.dart';
import 'package:samskritam/features/auth/screens/login.dart';
import 'package:samskritam/features/landing/screens/splash_screen.dart';
import 'package:samskritam/features/lessons/screens/lessons_screen.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
    case LessonScreen.routeName:
      final lessonId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => LessonScreen(lessonId: lessonId,),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => SplashScreen(),
      );
  }
}
