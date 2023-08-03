import 'package:flutter/material.dart';
import 'package:samskritam/common/config/colors.dart';
import 'package:samskritam/mobile_layout.dart';
import 'package:samskritam/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samskritam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: customPrimaryColor),
        useMaterial3: true,
      ),
      onGenerateRoute: generateRoute,
      home: const MobileLayout(title: 'Samskritam'),
    );
  }
}
