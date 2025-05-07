
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_input_widget_two.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final ResetPasswordScreenController controller = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 20.0)),
        child: Form(
          // key: controller.resetPasswordKey,
          child: Column(
            children: [
              Gap(height: AppSize.size.width * 0.45),
              const AppText(
                data: "Reset Your Password",
                fontWeight: FontWeight.w600,
                color: AppColors.black700,
                fontSize: 24,
              ),
              Gap(height: AppSize.size.width * 0.05),
              const AppText(
                data: "This password must be different than before ",
                fontWeight: FontWeight.w500,
                color: AppColors.black500,
              ),
              Gap(height: AppSize.size.width * 0.15),
              AppInputWidgetTwo(
                // controller: controller.passwordTextEditingController,
                hintText: "Create a Password",
                filled: true,
                isPassWord: true,
                maxLines: 1,
                fillColor: AppColors.white50,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (p0) {
                  FocusManager.instance.primaryFocus?.nextFocus();
                },
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
              const Gap(height: 20),
              AppInputWidgetTwo(
                // controller: controller.reEntryPasswordTextEditingController,
                isPassWordSecondValidation: true,
                // isPassWordSecondValidationController: controller.passwordTextEditingController,
                hintText: "Confirm Password",
                filled: true,
                isPassWord: true,
                maxLines: 1,
                fillColor: AppColors.white50,
                textInputAction: TextInputAction.done,
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
              const Gap(height: 60),
              AppButton(
                // isLoading: controller.isLoading.value,
                onTap: () {
                  // controller.clickResetButton();
                  // Get.offAllNamed(AppRoutes.signIn);
                },
                title: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
