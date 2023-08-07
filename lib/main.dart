import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:samskritam/common/config/apptheme/colors.dart';
import 'package:samskritam/mobile_layout.dart';
import 'package:samskritam/router.dart';

void main() async{

  // get stored app theme (dark mode/light mode)
  await GetStorage.init("currTheme");
  
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samskritam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: customPrimaryBlueColor),
        useMaterial3: true,
      ),
      onGenerateRoute: generateRoute,
      home: const MobileLayout(title: 'Samskritam'),
    );
  }
}
