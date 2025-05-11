import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/app_const.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/screens/auth_screen/otp_verification_screen/controllers/otp_verification_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';
import 'package:w_a/widgets/texts/otp_input_field_widget.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OtpVerificationScreenController(),
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppImage(
                  path: AssetsImagesPath.authBg,
                  fit: BoxFit.cover,
                  height: AppSize.width(value: 254),
                ),
                Gap(height: AppSize.width(value: 100)),
                Form(
                  key: controller.verificationCodeKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => AppText(
                          data:
                              controller.isEmailVerification.value
                                  ? "Verify Your Email Address"
                                  : "Enter Verification Code",
                          fontWeight: FontWeight.w500,
                          color: AppColors.text,
                          fontSize: AppSize.width(value: 24),
                        ),
                      ),
                      Gap(height: AppSize.width(value: 8)),
                      Obx(
                        () => AppText(
                          data:
                              controller.isEmailVerification.value
                                  ? "A verification code has been sent to "
                                  : "We've Sent a Code to exa***@gmail.com",
                          fontWeight: FontWeight.w400,
                          fontSize: AppSize.width(value: 16),
                          color: AppColors.subTitle,
                        ),
                      ),
                      const Gap(height: 20),
                      Obx(
                        () =>
                            !controller.isEmailVerification.value
                                ? const SizedBox()
                                : AppText(
                                  data: controller.argMail.value,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.yellow500,
                                ),
                      ),

                      const Gap(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(value: 60),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OtpInputFieldWidget(
                              controller: controller.otpText1,
                            ),
                            OtpInputFieldWidget(
                              controller: controller.otpText2,
                            ),
                            OtpInputFieldWidget(
                              controller: controller.otpText3,
                            ),
                            OtpInputFieldWidget(
                              controller: controller.otpText4,
                            ),
                          ],
                        ),
                      ),
                      Gap(height: AppSize.width(value: 10)),
                      Obx(() {
                        return RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: AppSize.width(
                                value: AppSize.width(value: 20),
                              ),
                              fontFamily: AppConst.fontFamily1,
                              height: 1.5,
                              color: AppColors.subTitle,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              const TextSpan(text: 'Resend code in '),
                              TextSpan(
                                text: controller.formatTime(
                                  controller.seconds.value,
                                ),
                                style: TextStyle(color: AppColors.yellow500),
                              ),
                              const TextSpan(text: ' s '),
                            ],
                          ),
                        );
                      }),
                      const Gap(height: 70),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(value: 16),
                        ),
                        child: AppButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.updatePasswordScreen);
                          },
                          title: "Verify",
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      // GestureDetector(
                      //   onTap: () {
                      //     if (!controller.isLoading.value) {
                      //       controller.clickVerificationCodeButton();
                      //     }
                      //   },
                      //   child: Obx(
                      //     () => Container(
                      //       width: Get.width,
                      //       height: AppSize.width(value: 50.0),
                      //       alignment: Alignment.center,
                      //       decoration: BoxDecoration(
                      //         color: AppColors.primary,
                      //         borderRadius: BorderRadius.circular(
                      //           AppSize.width(value: 5),
                      //         ),
                      //       ),
                      //       child:
                      //           controller.isLoading.value
                      //               ? SizedBox(
                      //                 height: AppSize.width(value: 30.0),
                      //                 width: AppSize.width(value: 30.0),
                      //                 child: const CircularProgressIndicator(),
                      //               )
                      //               : const AppText(
                      //                 data: "Continue",
                      //                 color: AppColors.white50,
                      //                 fontWeight: FontWeight.w600,
                      //                 fontSize: 18,
                      //               ),
                      //     ),
                      //   ),
                      // ),
                      // Gap(height: 40),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     const AppText(
                      //       data: "Didn’t you receive OTP?",
                      //       fontWeight: FontWeight.w400,
                      //       color: AppColors.black400,
                      //     ),
                      //     const Gap(width: 5),
                      //     GestureDetector(
                      //       onTap: () {
                      //         controller.reCallStatTimer();
                      //       },
                      //       child: Obx(
                      //         () => AppText(
                      //           data: "Resend OTP",
                      //           fontWeight: FontWeight.w600,
                      //           color:
                      //               controller.seconds.value == 0
                      //                   ? AppColors.primary
                      //                   : AppColors.primary.withOpacity(0.5),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
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
