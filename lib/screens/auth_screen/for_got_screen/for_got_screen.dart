
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_lottie_path.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: const AppText(
          data: "Forget Password",
          color: AppColors.black500,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: GetBuilder(
        init: ForGotScreenController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 20.0),
              ),
              child: Form(
                key: controller.forGotScreenKey,
                child: Column(
                  children: [
                    Gap(height: AppSize.size.width * 0.05),
                    const AppText(
                      data: "Enter your email account to reset password",
                      fontWeight: FontWeight.w600,
                      color: AppColors.black500,
                    ),
                    AspectRatio(
                      aspectRatio: 1.2,
                      child: LottieBuilder.asset(AssetsLottiePath.forgot),
                    ),
                    AppInputWidgetTwo(
                      controller: controller.emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Email",
                      filled: true,
                      isEmail: true,
                      textInputAction: TextInputAction.done,
                      fillColor: AppColors.white50,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: AppSize.width(value: 10),
                      ),
                      prefix: Align(
                        child: AppImage(
                          path: AssetsIconsPath.lock,
                          width: AppSize.width(value: 20),
                        ),
                      ),
                    ),
                    Gap(height: AppSize.size.width * 0.30),
                    Obx(
                      () => AppButton(
                        onTap: () {
                          // Get.toNamed(AppRoutes.otpVerificationScreen);
                        },
                        isLoading: controller.isLoading.value,
                        title: "Continue",
                      ),
                    ),
                    const Gap(height: 30),
                    Container(
                      width: Get.width,
                      height: AppSize.width(value: 45.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white50,
                        border: Border.all(color: AppColors.blue),
                        borderRadius: BorderRadius.circular(
                          AppSize.width(value: 10),
                        ),
                      ),
                      child: const AppText(
                        data: "Cancel",
                        color: AppColors.black500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
