import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/app_const.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/screens/auth_screen/sign_up_screen/controllers/sign_up_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_input_widget_two.dart';
import 'package:w_a/widgets/texts/app_text.dart';
import 'package:w_a/widgets/texts/expandedn_item.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.appBg,
          body: SingleChildScrollView(
            child: SizedBox(
              width: Get.width,
              child: Column(
                children: [
                  AppImage(
                    path: AssetsImagesPath.authBg,
                    fit: BoxFit.cover,
                    height: AppSize.width(value: 254),
                  ),
                  Gap(height: AppSize.width(value: 20)),
                  AppText(
                    data: "Create an Account",
                    color: AppColors.text,
                    fontSize: AppSize.width(value: 24),
                    fontWeight: FontWeight.w500,
                  ),
                  Gap(height: AppSize.width(value: 20)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.width(value: 12),
                    ),
                    child: Form(
                      key: controller.signUpFormKey,
                      child: Column(
                        spacing: AppSize.width(value: 12),
                        children: [
                          AppInputWidgetTwo(
                            controller:
                                controller.fullNameTextEditingController,
                            hintText: "Enter Your Full Name",
                            filled: true,
                            fillColor: AppColors.boxBg,
                            contentPadding: EdgeInsets.symmetric(),
                            prefix: Align(
                              child: AppImage(
                                path: AssetsIconsPath.email,
                                width: AppSize.width(value: 16),
                                height: AppSize.width(value: 16),
                              ),
                            ),
                          ),
                          AppInputWidgetTwo(
                            controller: controller.emailTextEditingController,
                            hintText: "Enter Your Email",
                            filled: true,
                            isEmail: true,
                            fillColor: AppColors.boxBg,
                            contentPadding: EdgeInsets.symmetric(),
                            prefix: Align(
                              child: AppImage(
                                path: AssetsIconsPath.email,
                                width: AppSize.width(value: 16),
                                height: AppSize.width(value: 16),
                              ),
                            ),
                          ),
                          ExpandableRadioContainer(fillColor: AppColors.boxBg),
                          AppInputWidgetTwo(
                            hintText: "Enter Password",
                            controller:
                                controller.passwordTextEditingController,
                            filled: true,
                            isPassWord: true,
                            maxLines: 1,
                            fillColor: AppColors.boxBg,
                            contentPadding: EdgeInsets.symmetric(),
                            prefix: Align(
                              child: AppImage(
                                path: AssetsIconsPath.lock,
                                width: AppSize.width(value: 16),
                                height: AppSize.width(value: 16),
                              ),
                            ),
                          ),
                          AppInputWidgetTwo(
                            controller:
                                controller.reEnterPasswordTextEditingController,
                            hintText: "Re-Enter Password",
                            filled: true,
                            isPassWord: true,
                            isPassWordSecondValidation: true,
                            isPassWordSecondValidationController:
                                controller.passwordTextEditingController,
                            maxLines: 1,
                            fillColor: AppColors.boxBg,
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(),
                            prefix: Align(
                              child: AppImage(
                                path: AssetsIconsPath.lock,
                                width: AppSize.width(value: 16),
                                height: AppSize.width(value: 16),
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                              Gap(width: AppSize.width(value: 8)),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: AppSize.width(
                                      value: 6,
                                    ), // aligns better with checkbox
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: AppSize.width(
                                          value: AppSize.width(value: 16),
                                        ),
                                        fontFamily: AppConst.fontFamily1,
                                        height: 1.5,
                                        color: AppColors.subTitle,
                                      ),
                                      children: [
                                        const TextSpan(
                                          text:
                                              'By creating an account, I accept the ',
                                        ),
                                        TextSpan(
                                          text: 'Terms & Conditions',
                                          style: TextStyle(
                                            color: AppColors.yellow500,
                                          ),
                                        ),
                                        const TextSpan(text: ' & '),
                                        TextSpan(
                                          text: 'Privacy Policy.',
                                          style: TextStyle(
                                            color: AppColors.yellow500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Gap(height: AppSize.width(value: 44)),

                          AppButton(
                            title: "Next",
                            titleSize: 20,
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {},
                          ),

                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: AppSize.width(
                                  value: AppSize.width(value: 16),
                                ),
                                fontFamily: AppConst.fontFamily1,
                                height: 1.5,
                                color: AppColors.subTitle,
                              ),
                              children: [
                                const TextSpan(
                                  text: 'Already have an account? ',
                                ),
                                TextSpan(
                                  text: 'SignIn',
                                  style: TextStyle(color: AppColors.yellow500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
