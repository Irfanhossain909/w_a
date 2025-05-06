import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Notification"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildRowWidget(),
            ...List.generate(20, (index) {
              return buildRowWidget(isRead: false);
            }),
          ],
        ),
      ),
    );
  }

  Widget buildRowWidget({bool isRead = true}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isRead ? AppColors.boxBg : AppColors.appBg,
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.width(value: 16),
            vertical: AppSize.width(value: 12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.cardBg,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(AppSize.width(value: 12)),
                  child: AppImage(
                    path: AssetsIconsPath.notification,
                    width: AppSize.width(value: 24),
                    height: AppSize.width(value: 24),
                  ),
                ),
              ),
              Gap(width: AppSize.width(value: 12)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      data: 'Welcome to I help',
                      fontSize: AppSize.width(value: 16),
                      fontWeight: FontWeight.w500,
                      color: AppColors.subTitle,
                    ),
                    const Gap(height: 5),
                    AppText(
                      data: '2 hours ago',
                      fontSize: AppSize.width(value: 14),
                      fontWeight: FontWeight.w500,
                      color: AppColors.subTitle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
