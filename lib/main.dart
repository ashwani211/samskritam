import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:samskritam/common/config/apptheme/controller/theme_controller.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:samskritam/mobile_layout.dart';
import 'package:samskritam/router.dart';

void main() async {
  // get stored app theme (dark mode/light mode)
  await GetStorage.init("currTheme");
  // required for firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

void initTheme() {
  final currTheme = GetStorage("currTheme");
  currTheme.writeIfNull("primaryColor", "light");
  // currTheme.writeIfNull("primaryColor", customPrimaryBlueColor);
  // currTheme.writeIfNull("isThemeLight", false);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ref.read(themeControllerProvider).initTheme();
    // ref.read(themeRepositoryProvider).initTheme();
    return Consumer(
      builder: (context, WidgetRef ref, _) {
        initTheme();
        return MaterialApp(
          title: 'Samskritam',
          debugShowCheckedModeBanner: false,
          // theme: ref.watch(themeControllerProvider).getCurrentTheme(),
          onGenerateRoute: generateRoute,
          home: const MobileLayout(title: 'Samskritam'),
        );
      }
    );
  }
}
