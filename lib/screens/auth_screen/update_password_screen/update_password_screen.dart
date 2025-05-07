import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_input_widget_two.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final ResetPasswordScreenController controller = Get.find();
    return Scaffold(
      body: Column(
        children: [
          AppImage(
            path: AssetsImagesPath.authBg,
            fit: BoxFit.cover,
            height: AppSize.width(value: 254),
          ),
          Gap(height: AppSize.width(value: 90)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 12)),
            child: Form(
              // key: controller.resetPasswordKey,
              child: Column(
                children: [
                  const AppText(
                    data: "Create New Password",
                    fontWeight: FontWeight.w500,
                    color: AppColors.text,
                    fontSize: 24,
                  ),
                  Gap(height: AppSize.width(value: 6)),
                  const AppText(
                    data: "Password must have 8 characters",
                    fontWeight: FontWeight.w400,
                    color: AppColors.subTitle,
                  ),
                  Gap(height: AppSize.width(value: 25)),
                  AppInputWidgetTwo(
                    // controller: controller.passwordTextEditingController,
                    hintText: "Create a Password",
                    filled: true,
                    isPassWord: true,
                    maxLines: 1,
                    fillColor: AppColors.boxBg,
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
                        width: AppSize.width(value: 16),
                      ),
                    ),
                  ),
                  const Gap(height: 16),
                  AppInputWidgetTwo(
                    // controller: controller.reEntryPasswordTextEditingController,
                    isPassWordSecondValidation: true,
                    // isPassWordSecondValidationController: controller.passwordTextEditingController,
                    hintText: "Confirm Password",
                    filled: true,
                    isPassWord: true,
                    maxLines: 1,
                    fillColor: AppColors.boxBg,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: AppSize.width(value: 10),
                    ),
                    prefix: Align(
                      child: AppImage(
                        path: AssetsIconsPath.lock,
                        width: AppSize.width(value: 16),
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
                    title: "Update Password",
                    borderRadius: BorderRadius.circular(12),
                    titleSize: AppSize.width(value: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
