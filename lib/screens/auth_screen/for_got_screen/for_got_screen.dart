import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/screens/auth_screen/for_got_screen/controllers/for_got_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_input_widget_two.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ForGotScreen extends StatelessWidget {
  const ForGotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: ForGotScreenController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AppImage(
                  path: AssetsImagesPath.authBg,
                  fit: BoxFit.cover,
                  height: AppSize.width(value: 254),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 16.0),
                  ),
                  child: Form(
                    key: controller.forGotScreenKey,
                    child: Column(
                      children: [
                        Gap(height: AppSize.width(value: 120)),
                        AppText(
                          data: "Forgot Password",
                          fontWeight: FontWeight.w500,
                          color: AppColors.text,
                          fontSize: AppSize.width(value: 24),
                        ),
                        Gap(height: AppSize.width(value: 10)),

                        const AppText(
                          data: "Enter your email to reset password",
                          fontWeight: FontWeight.w400,
                          color: AppColors.subTitle,
                        ),
                        Gap(height: AppSize.width(value: 20)),
                        AppInputWidgetTwo(
                          controller: controller.emailTextEditingController,
                          keyboardType: TextInputType.emailAddress,
                          hintText: "Enter Your Email",
                          filled: true,
                          isEmail: true,
                          textInputAction: TextInputAction.done,
                          fillColor: AppColors.boxBg,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: AppSize.width(value: 10),
                          ),
                          prefix: Align(
                            child: AppImage(
                              path: AssetsIconsPath.email,
                              width: AppSize.width(value: 16),
                            ),
                          ),
                        ),
                        Gap(height: AppSize.width(value: 60)),
                        Obx(
                          () => AppButton(
                            onTap: () {
                              // Get.toNamed(AppRoutes.otpVerificationScreen);
                            },
                            isLoading: controller.isLoading.value,
                            borderRadius: BorderRadius.circular(12),
                            title: "Get OTP",
                            titleSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
