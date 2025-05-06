import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerQrCodeScreen extends StatelessWidget {
  const CustomerQrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.offNamedUntil(
            AppRoutes.customerHomeScreen,
            (route) => route.isFirst,
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage(
                  path: AssetsImagesPath.qrCode,
                  width: AppSize.width(value: 232),
                  height: AppSize.width(value: 232),
                ),

                AppText(
                  data: "Save it for the Code ",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.subTitle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
