import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/app_const.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/screens/subscriptions_screen/controller/subsctiptions_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class SubsCriptionsScreen extends StatelessWidget {
  final SubsctiptionsController controller = Get.put(SubsctiptionsController());

  final List<String> tabs = ["Standard Plan", "Premium Plan"];

  SubsCriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Subscribtions"),
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(tabs.length, (index) {
                final isSelected = controller.selectedIndex.value == index;
                return GestureDetector(
                  onTap: () => controller.changeTab(index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            isSelected
                                ? BorderSide(
                                  width: 3,
                                  color: Colors.transparent,
                                )
                                : BorderSide.none,
                      ),
                    ),
                    child: Column(
                      children: [
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return isSelected
                                ? AppColors.customGradient.createShader(bounds)
                                : const LinearGradient(
                                  colors: [
                                    AppColors.black300,
                                    AppColors.black300,
                                  ],
                                ).createShader(bounds);
                          },
                          child: AppText(
                            data: tabs[index],
                            fontSize: AppSize.width(value: 20),
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),

                        isSelected
                            ? Container(
                              margin: const EdgeInsets.only(top: 6),
                              height: 3,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: AppColors.customGradient,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            )
                            : Container(
                              margin: const EdgeInsets.only(top: 6),
                              height: 3,
                              width: 150,
                              decoration: BoxDecoration(
                                color: AppColors.boxBg,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          Gap(height: AppSize.width(value: 20)),
          Expanded(
            child: Obx(() {
              return controller.selectedIndex.value == 0
                  ? _buildTabContent("Standard Plan")
                  : _buildTabContent("Premium Plan");
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(String label) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: AppSize.width(value: 100)),
          child: Container(
            width: AppSize.size.width * 0.8,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: AppColors.boxBg,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey, // Border color
                width: 1, // Border width = 1px
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(value: 16),
                vertical: AppSize.width(value: 40),
              ),
              child: Column(
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return AppColors.customGradient.createShader(bounds);
                    },
                    child: AppText(
                      data: "Get Standard Package",
                      fontSize: AppSize.width(value: 20),
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '50',
                              style: TextStyle(
                                fontSize: AppSize.width(value: 40),
                                fontWeight: FontWeight.w600,
                                color: AppColors.text,
                                fontFamily: AppConst.fontFamily1,
                              ),
                            ),
                            TextSpan(
                              text: 'AED',
                              style: TextStyle(
                                fontSize: AppSize.width(value: 16),
                                fontWeight: FontWeight.w600,
                                color: AppColors.text,
                                fontFamily: AppConst.fontFamily1,
                              ),
                            ),
                            TextSpan(
                              text: '  /Per Month',
                              style: TextStyle(
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w600,
                                color: AppColors.subTitle,
                                fontFamily: AppConst.fontFamily1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconTextRowCard(),
                  Gap(height: AppSize.width(value: 16)),
                  IconTextRowCard(),
                  Gap(height: AppSize.width(value: 16)),
                  IconTextRowCard(),
                  Gap(height: AppSize.width(value: 16)),
                  IconTextRowCard(),
                  Spacer(),
                  GrediantButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class GrediantButton extends StatelessWidget {
  final String? text;
  final Function()? onTap;
  const GrediantButton({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          // Gradient border workaround: Use transparent border and stack shader text
          color: Colors.transparent,
        ),
        gradient: AppColors.customGradient,
      ),
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.boxBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ShaderMask(
              shaderCallback:
                  (bounds) => AppColors.customGradient.createShader(bounds),
              child: Text(
                text ?? "Get Started",
                style: TextStyle(
                  fontSize: AppSize.width(value: 20),
                  fontWeight: FontWeight.w600,
                  color: Colors.white, // This becomes gradient via ShaderMask
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconTextRowCard extends StatelessWidget {
  final String? text;
  const IconTextRowCard({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppImage(
          path: AssetsIconsPath.indicate,
          width: AppSize.width(value: 16),
          height: AppSize.width(value: 16),
        ),
        Gap(width: AppSize.width(value: 8)),
        Expanded(
          child: AppText(
            data:
                text ??
                "It is a long established fact that a reader will be distracted by the readable content ",
            fontSize: AppSize.width(value: 14),
            fontWeight: FontWeight.w400,
            color: AppColors.subTitle,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
