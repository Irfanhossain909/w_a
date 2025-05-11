import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppImage(
                  path: AssetsImagesPath.authBg,
                  fit: BoxFit.cover,
                  height: AppSize.width(value: 254),
                ),
                Gap(height: AppSize.width(value: 90)),
                AppText(
                  data: "Welcome!",
                  color: AppColors.text,
                  fontSize: AppSize.width(value: 24),
                  fontWeight: FontWeight.w500,
                ),
                AppText(
                  data: "Sign in To Continue.",
                  color: AppColors.subTitle,
                  fontSize: AppSize.width(value: 24),
                  fontWeight: FontWeight.w400,
                ),
                Gap(height: 16),
                Padding(
                  padding: EdgeInsets.all(AppSize.width(value: 12)),
                  child: Form(
                    key: controller.signInFormKey,
                    child: Column(
                      children: [
                        AppInputWidgetTwo(
                          hintText: "Enter Your Email",
                          filled: true,
                          isEmail: true,
                          fillColor: AppColors.boxBg,
                          contentPadding: EdgeInsets.symmetric(),
                          controller: controller.emailTextEditingController,
                          prefix: Align(
                            child: AppImage(
                              path: AssetsIconsPath.email,
                              width: AppSize.width(value: 16),
                              height: AppSize.width(value: 16),
                            ),
                          ),
                        ),
                        Gap(height: 10),
                        AppInputWidgetTwo(
                          hintText: "Enter Your Password",
                          filled: true,
                          isPassWord: true,
                          maxLines: 1,
                          fillColor: AppColors.boxBg,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(),
                          controller: controller.passwordTextEditingController,
                          prefix: Align(
                            child: AppImage(
                              path: AssetsIconsPath.lock,
                              width: AppSize.width(value: 16),
                              height: AppSize.width(value: 16),
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
                                            color: AppColors.yellow400,
                                          );
                                        } else {
                                          return BorderSide(
                                            color: AppColors.subTitle,
                                          );
                                        }
                                      }),
                                      value: controller.isRememberMe.value,
                                      checkColor: AppColors.yellow400,
                                      fillColor: WidgetStatePropertyAll(
                                        AppColors.appBg,
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
                                  color: AppColors.subTitle,
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.forgotPasswordScreen);
                              },
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return AppColors.customGradient.createShader(
                                    bounds,
                                  );
                                },
                                child: AppText(
                                  data: "Forgot Password ?",
                                  fontSize: AppSize.width(value: 16),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(height: 20),
                        Obx(
                          () => AppButton(
                            borderRadius: BorderRadius.circular(12),
                            isLoading: controller.isLoading.value,
                            onTap: () {
                              
                              Get.toNamed(AppRoutes.testRoal);
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
                              color: AppColors.subTitle,
                            ),
                            Gap(width: 10),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.signUpScreen);
                              },
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return AppColors.customGradient.createShader(
                                    bounds,
                                  );
                                },
                                child: AppText(
                                  data: "Sign Up",
                                  fontSize: AppSize.width(value: 16),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
