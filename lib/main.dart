import 'package:flutter/material.dart';
import 'package:samskritam/features/global/config/colors.dart';
import 'package:samskritam/mobile_layout.dart';

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
      home: const MobileLayout(title: 'Samskritam'),
    );
  }
}
