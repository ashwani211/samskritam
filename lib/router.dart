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
      final arguments = settings.arguments as Map<String, dynamic>;
      final lessonId = arguments["lesson_id"];
      final lessonInfoTitle = arguments["info_title"];
      final lessonInfoDetails = arguments["info_details"];
      return MaterialPageRoute(
        builder: (context) => LessonScreen(lessonId: lessonId,lessonInfoTitle: lessonInfoTitle,lessonInfoDetails: lessonInfoDetails,),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => SplashScreen(),
      );
  }
}
