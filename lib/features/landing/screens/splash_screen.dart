import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageSubLOGO(),
              SizedBox(height: 84,)
            ],
          ),
        ),
      ),
    );
  }
}
