
import 'package:flutter/material.dart';
import 'package:samskritam/features/auth/screens/login.dart';
import 'package:samskritam/features/landing/screens/splash_screen.dart';

Route<dynamic>? generateRoute(RouteSettings settings){
  switch(settings.name){
    case LoginScreen.routeName: 
      return MaterialPageRoute(builder: (context) => LoginScreen(),);
    default: 
      return MaterialPageRoute(builder: (context) => SplashScreen(),);
  }
}