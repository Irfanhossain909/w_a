import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.onBoardingScreen); // Change this route as needed
    });

    return Scaffold(
      body: Center(
        child: AppImage(
          path: AssetsImagesPath.splashLogo,
          width: AppSize.width(value: 295),
          height: AppSize.width(value: 190),
        ),
      ),
    );
  }
}
