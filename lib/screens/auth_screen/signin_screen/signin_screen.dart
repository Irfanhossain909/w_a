import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/screens/auth_screen/signin_screen/controller/sign_in_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_input_widget_two.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignInScreenController(),
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: Column(
                children: [
                  AppImage(
                    path: AssetsImagesPath.authBg,
                    fit: BoxFit.cover,
                    height: AppSize.width(value: 254),
                  ),
                  Gap(height: AppSize.width(value: 100)),
                  Form(
                    key: controller.signInFormKey,
                    child: Column(
                      children: [
                        AppInputWidgetTwo(
                          hintText: "Email",
                          filled: true,
                          isEmail: true,
                          fillColor: AppColors.boxBg,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(),
                          controller: controller.emailTextEditingController,
                          prefix: Align(
                            child: AppImage(
                              path: AssetsIconsPath.call,
                              width: AppSize.width(value: 20),
                            ),
                          ),
                        ),
                        Gap(height: 10),
                        AppInputWidgetTwo(
                          hintText: "Password",
                          filled: true,
                          isEmail: true,
                          fillColor: AppColors.boxBg,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(),
                          controller: controller.passwordTextEditingController,
                          prefix: Align(
                            child: AppImage(
                              path: AssetsIconsPath.call,
                              width: AppSize.width(value: 20),
                            ),
                          ),
                        ),
                        Gap(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor: AppColors.green,
                                    ),
                                    child: Checkbox(
                                      activeColor: AppColors.white50,
                                      visualDensity: VisualDensity(
                                        horizontal: -4,
                                        vertical: -4,
                                      ),
                                      side: WidgetStateBorderSide.resolveWith((
                                        states,
                                      ) {
                                        if (states.contains(
                                          WidgetState.selected,
                                        )) {
                                          return BorderSide(
                                            color: AppColors.black300,
                                          );
                                        } else {
                                          return BorderSide(
                                            color: AppColors.black300,
                                          );
                                        }
                                      }),
                                      value: controller.isRememberMe.value,
                                      checkColor: AppColors.black300,
                                      fillColor: WidgetStatePropertyAll(
                                        AppColors.white50,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: AppColors.yellow500,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          AppSize.width(value: 5.0),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        controller.isRememberMe.value = value!;
                                      },
                                    ),
                                  ),
                                ),
                                AppText(
                                  data: "Remember me",
                                  color: AppColors.black300,
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                // Get.toNamed(AppRoutes.forGot);
                                // Get.toNamed(AppRoutes.resetPasswordScreen);
                                // Get.toNamed(AppRoutes.otpVerificationScreen);
                              },
                              child: AppText(
                                data: "Forgot Password ?",
                                fontWeight: FontWeight.w600,
                                color: AppColors.yellow600,
                              ),
                            ),
                          ],
                        ),
                        Gap(height: 20),
                        Obx(
                          () => AppButton(
                            isLoading: controller.isLoading.value,
                            onTap: () {
                              // controller.clickSignIButton();
                              // Get.toNamed(AppRoutes.userSelectScreen);
                            },
                            title: "Sign In",
                          ),
                        ),
                        Gap(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              data: "Don’t have an account?",
                              fontWeight: FontWeight.w500,
                              color: AppColors.black300,
                            ),
                            Gap(width: 10),
                            GestureDetector(
                              onTap: () {
                                // Get.toNamed(AppRoutes.signUp);
                              },
                              child: AppText(
                                data: "Sign Up",
                                fontWeight: FontWeight.w600,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
