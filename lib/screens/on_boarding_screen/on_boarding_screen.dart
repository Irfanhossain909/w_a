import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppImage(path: AssetsImagesPath.onBoarding, fit: BoxFit.cover),
          Gap(height: AppSize.width(value: 14)),
          AppText(
            data: '''Experience Life
One Event at a Time!''',
            fontSize: AppSize.width(value: 28),
            fontWeight: FontWeight.w600,
            color: AppColors.white600,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 16)),
            child: AppButton(
              title: "Get Started",
              titleSize: AppSize.width(value: 20),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Gap(height: AppSize.width(value: 60)),
        ],
      ),
    );
  }
}
