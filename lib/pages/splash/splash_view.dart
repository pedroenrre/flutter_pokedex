import 'package:flutter/material.dart';
import 'package:pokedex/resources/app_images.dart';
import 'package:pokedex/resources/app_colors.dart';
import 'package:pokedex/resources/app_text_styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppImages.splashLogo),
            const SizedBox(height: 32),
            Text(
              'ioasys pokédex',
              style: getSplashStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
