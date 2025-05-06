import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerBookingConfirmScreen extends StatelessWidget {
  const CustomerBookingConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            spacing: AppSize.width(value: 10),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppImage(
                path: AssetsIconsPath.confirm,
                width: AppSize.width(value: 120),
                height: AppSize.width(value: 114),
              ),
              AppText(
                data: "Booking Confirmed!",
                fontSize: AppSize.width(value: 24),
                fontWeight: FontWeight.w500,
                color: AppColors.subTitle,
              ),
              AppText(
                data:
                    "Your stay is officially booked! Check your email for the details, and get ready for a great experience.",
                fontSize: AppSize.width(value: 12),
                fontWeight: FontWeight.w400,
                color: AppColors.subTitle,
                textAlign: TextAlign.center,
              ),
              Gap(height: AppSize.width(value: 5)),
              AppButton(
                title: "Get QR Code",
                gradient: AppColors.customGradient,
                borderRadius: BorderRadius.circular(AppSize.width(value: 40)),
                onTap: () {
                  Get.toNamed(AppRoutes.customerQRcodeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
