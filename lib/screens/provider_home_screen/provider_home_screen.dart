import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProviderHomeScreen extends StatelessWidget {
  const ProviderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 40,
              backgroundColor: AppColors.appBg,
              floating: true,
              pinned: true,
              snap: false,
              flexibleSpace: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppSize.width(value: 37),
                        height: AppSize.width(value: 24),
                        child: AppImage(path: AssetsImagesPath.appLogo),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.notificationScreen);
                        },
                        child: AppImage(
                          path: AssetsIconsPath.notification,
                          width: AppSize.width(value: 26),
                          height: AppSize.width(value: 26),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            itemTitleOption(
              onTapCall: () {
                Get.toNamed(AppRoutes.providerBookedClientScreen);
              },
              name: 'Booked Client',
            ),
          ],
        ),
      ),
    );
  }
}

class CardTitleText extends StatelessWidget {
  final String? mainText;
  final int? secondText;
  const CardTitleText({super.key, this.mainText, this.secondText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          data: mainText ?? "Recommended Events",
          fontSize: AppSize.width(value: 16),
          fontWeight: FontWeight.w600,
          color: AppColors.subTitle,
        ),
        AppText(
          data: "${secondText ?? '1345'} results",
          fontSize: AppSize.width(value: 12),
          fontWeight: FontWeight.w500,
          color: AppColors.text,
        ),
      ],
    );
  }
}

SliverToBoxAdapter itemTitleOption({
  required void Function()? onTapCall,
  required String name,
}) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            data: name,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: AppColors.subTitle,
          ),
          GestureDetector(
            onTap: onTapCall,
            child: AppText(
              data: "View All",
              fontWeight: FontWeight.w400,
              color: AppColors.green,
              fontSize: AppSize.width(value: 16),
            ),
          ),
        ],
      ),
    ),
  );
}

final List<String> items = [
  'Health & Wellness',
  'Dining',
  'Entertainment',
  'Dining',
  'Entertainment',
];
