import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/screens/provider_navigation_screen/controllers/provider_navigation_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/service_widget/account_card_widget.dart';
import 'package:w_a/widgets/service_widget/profile_top_widget.dart';
import 'package:w_a/widgets/texts/app_input_widget_three.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.providerNavigationControllerr});
  final ProviderNavigationScreenController providerNavigationControllerr;

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
                            title: "Portfolio",
                            iconPath: AssetsIconsPath.calenderNon,
                            onTap: () {
                              // Get.toNamed(AppRoutes.portfolioScreen);
                            },
                          ),
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
                                      // Get.toNamed(
                                      //   // AppRoutes.changePasswordScreen,
                                      // );
                                    },
                                  ),
                                  AccountCardWidget(
                                    title: "Delete account",
                                    iconPath: AssetsIconsPath.trush,
                                    onTap: () {
                                      Get.dialog(
                                        Dialog(
                                          backgroundColor: AppColors.white100,
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
                                                AppText(
                                                  data:
                                                      "Want to Delete Account !",
                                                  fontSize: AppSize.width(
                                                    value: 20,
                                                  ),
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.black500,
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
                                                    value: 14,
                                                  ),
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black400,
                                                ),

                                                const SizedBox(height: 20),
                                                AppInputWidgetThree(
                                                  title: "New Password",
                                                  isPassWord: true,
                                                  minLines: 1,
                                                  maxLines: 1,
                                                  fillColor: AppColors.fill,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          AppSize.width(
                                                            value: 10.0,
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
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: AppButton(
                                                        title: "Cancel",
                                                        titleColor:
                                                            AppColors.white100,
                                                        decoration: BoxDecoration(
                                                          color:
                                                              AppColors
                                                                  .white100,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                AppSize.width(
                                                                  value: 10,
                                                                ),
                                                              ),
                                                          border: Border.all(
                                                            color:
                                                                AppColors
                                                                    .black600, // সব সাইডে এই রঙের বর্ডার হবে
                                                            width: 1,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 10),
                                                    Expanded(
                                                      child: AppButton(
                                                        title: "Log Out",
                                                      ),
                                                    ),
                                                  ],
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
                          backgroundColor: AppColors.white100,
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
                                    child: Icon(Icons.close),
                                  ),
                                ),

                                AppText(
                                  data: "Do you want to log out your profile?",
                                  textAlign: TextAlign.center,
                                  fontSize: AppSize.width(value: 14),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black400,
                                ),
                                Gap(height: AppSize.width(value: 40)),

                                Row(
                                  children: [
                                    Expanded(
                                      child: AppButton(
                                        title: "Reject",
                                        titleColor: AppColors.blue,
                                        decoration: BoxDecoration(
                                          color: AppColors.white100,
                                          borderRadius: BorderRadius.circular(
                                            AppSize.width(value: 10),
                                          ),
                                          border: Border.all(
                                            color:
                                                AppColors
                                                    .green, // সব সাইডে এই রঙের বর্ডার হবে
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Gap(width: AppSize.width(value: 10)),
                                    Expanded(child: AppButton(title: "Delete")),
                                  ],
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
