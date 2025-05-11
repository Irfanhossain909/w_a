import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/screens/customer_navigation_screen/controllers/customer_navigation_screen_controller.dart';
import 'package:w_a/screens/provider_navigation_screen/controllers/provider_navigation_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/service_widget/account_card_widget.dart';
import 'package:w_a/widgets/service_widget/profile_top_widget.dart';
import 'package:w_a/widgets/texts/app_input_widget_three.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    this.providerNavigationControllerr,
    this.customerNavigationController,
  });
  final ProviderNavigationScreenController? providerNavigationControllerr;
  final CustomerNavigationScreenController? customerNavigationController;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProviderNavigationScreenController>(
      init: providerNavigationControllerr,
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: AppSize.width(value: 12),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileTopWidget(
                            imgPath: AssetsImagesPath.person,
                            name: 'Benjamin Daniel',
                            email: 'benjamin@gmail.com',
                          ),
                          Gap(height: AppSize.width(value: 5)),
                          AccountCardWidget(
                            title: "Personal Information",
                            iconPath: AssetsIconsPath.user,
                            onTap: () {
                              Get.toNamed(AppRoutes.personalInfoScreen);
                            },
                          ),

                          AccountCardWidget(
                            title: "Time Management",
                            iconPath: AssetsIconsPath.calenderNon,
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.providerTimemanagementScreen,
                              );
                            },
                          ),

                          // AccountCardWidget(
                          //   title: "Lunguage",
                          //   iconPath: AssetsIconsPath.lunguage,
                          //   onTap: () {
                          //     // Get.toNamed(AppRoutes.portfolioScreen);
                          //   },
                          // ),
                          AccountCardWidget(
                            title: "FAQ",
                            iconPath: AssetsIconsPath.faq,
                            onTap: () {
                              Get.toNamed(AppRoutes.faqScreen);
                            },
                          ),

                          // AccountCardWidget(
                          //   title: "Manage Bank Account",
                          //   iconPath: AssetsIconsPath.setting,
                          //   onTap: () {
                          //     // Get.toNamed(AppRoutes.manageBankAccountScreen);
                          //   },
                          // ),
                          AccountCardWidget(
                            title: "Setting",
                            iconPath: AssetsIconsPath.setting,
                            trellingIcon:
                                controller.isExpanded
                                    ? AssetsIconsPath.arrowDown
                                    : AssetsIconsPath.arrowright,
                            onTap: () {
                              controller.toggleExpansion(); // toggle visibility
                            },
                          ),
                          // Show/Hide Column based on controller.isExpanded
                          controller.isExpanded
                              ? Column(
                                spacing: AppSize.width(value: 12),
                                children: [
                                  AccountCardWidget(
                                    title: "Change Password",
                                    iconPath: AssetsIconsPath.lock,
                                    onTap: () {
                                      Get.toNamed(
                                        AppRoutes.changePasswordScreen,
                                      );
                                    },
                                  ),
                                  AccountCardWidget(
                                    title: "Delete account",
                                    iconPath: AssetsIconsPath.trush,
                                    onTap: () {
                                      Get.dialog(
                                        Dialog(
                                          backgroundColor: AppColors.boxBg,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              AppSize.width(value: 16),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                              AppSize.width(value: 20),
                                            ),
                                            child: Column(
                                              mainAxisSize:
                                                  MainAxisSize
                                                      .min, // Important to wrap content
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: GestureDetector(
                                                    onTap: () => Get.back(),
                                                    child: Icon(Icons.close),
                                                  ),
                                                ),
                                                Gap(
                                                  height: AppSize.width(
                                                    value: 10,
                                                  ),
                                                ),
                                                ShaderMask(
                                                  shaderCallback: (
                                                    Rect bounds,
                                                  ) {
                                                    return AppColors
                                                        .customGradient
                                                        .createShader(bounds);
                                                  },
                                                  child: AppText(
                                                    data:
                                                        "Want to Delete Account !",
                                                    fontSize: AppSize.width(
                                                      value: 20,
                                                    ),
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),

                                                Gap(
                                                  height: AppSize.width(
                                                    value: 10,
                                                  ),
                                                ),
                                                AppText(
                                                  data:
                                                      "Please confirm your password to remove your account.",
                                                  textAlign: TextAlign.center,
                                                  fontSize: AppSize.width(
                                                    value: AppSize.width(
                                                      value: 16,
                                                    ),
                                                  ),
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.subTitle,
                                                ),

                                                const SizedBox(height: 20),
                                                AppInputWidgetThree(
                                                  title: "New Password",
                                                  isPassWord: true,
                                                  style: TextStyle(
                                                    color: AppColors.text,
                                                  ),
                                                  minLines: 1,
                                                  maxLines: 1,
                                                  fillColor: AppColors.black700,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          AppSize.width(
                                                            value: 16,
                                                          ),
                                                        ),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  errBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          AppSize.width(
                                                            value: 10.0,
                                                          ),
                                                        ),
                                                    borderSide:
                                                        const BorderSide(
                                                          color:
                                                              AppColors.warning,
                                                        ),
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                GrediantYesNoButton(
                                                  first: "Cancel",
                                                  second: "Delete",
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  AccountCardWidget(
                                    title: "About us",
                                    iconPath: AssetsIconsPath.about,
                                    onTap: () {
                                      Get.toNamed(AppRoutes.aboutUsScreen);
                                    },
                                  ),
                                  AccountCardWidget(
                                    title: "Privacy policy",
                                    iconPath: AssetsIconsPath.privicy,
                                    onTap: () {
                                      Get.toNamed(
                                        AppRoutes.privicyAndPlicyScreen,
                                      );
                                    },
                                  ),
                                  AccountCardWidget(
                                    title: "Terms & conditions",
                                    iconPath: AssetsIconsPath.terms,
                                    onTap: () {
                                      Get.toNamed(
                                        AppRoutes.termsAndConditionScreen,
                                      );
                                    },
                                  ),
                                  Gap(height: AppSize.width(value: 12)),
                                  // ...Repeat as needed
                                ],
                              )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                  AccountCardWidget(
                    title: "Log Out",
                    iconPath: AssetsIconsPath.logout,
                    onTap: () {
                      Get.dialog(
                        Dialog(
                          backgroundColor: AppColors.boxBg,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppSize.width(value: 16),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(AppSize.width(value: 20)),
                            child: Column(
                              mainAxisSize:
                                  MainAxisSize.min, // Important to wrap content
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                    onTap: () => Get.back(),
                                    child: Icon(
                                      Icons.close,
                                      color: AppColors.subTitle,
                                    ),
                                  ),
                                ),

                                AppText(
                                  data: "Do you want to log out your profile?",
                                  textAlign: TextAlign.center,
                                  fontSize: AppSize.width(value: 20),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                Gap(height: AppSize.width(value: 40)),

                                GrediantYesNoButton(
                                  first: "Cancel",
                                  second: "Logout",
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Gap(height: AppSize.width(value: 12)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class GrediantYesNoButton extends StatelessWidget {
  final String? first;
  final String? second;
  const GrediantYesNoButton({super.key, this.first, this.second});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(2), // Border width
            decoration: BoxDecoration(
              gradient: AppColors.customGradient,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.boxBg, // Inner button background
                borderRadius: BorderRadius.circular(12),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // Button action here
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Black icon with black background
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return AppColors.customGradient.createShader(
                              bounds,
                            );
                          },
                          child: AppText(
                            data: first ?? "Cancel",
                            fontSize: AppSize.width(value: 20),
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: AppButton(
            title: second ?? "Log Out",
            titleSize: AppSize.width(value: 20),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );
  }
}
