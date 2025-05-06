
import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white50,
      appBar: AppBar(
        title: AppText(
          data: "Notifications",
          fontSize: AppSize.width(value: 20),
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.center,
          // color: AppColors.gray,
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
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
          color: isRead ? AppColors.white400 : AppColors.white50,
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
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(AppSize.width(value: 12)),
                  child: AppImage(
                    // path: AssetsIconsPath.,
                    width: AppSize.width(value: 18),
                    height: AppSize.width(value: 18),
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
                      color: AppColors.black900,
                    ),
                    const Gap(height: 5),
                    AppText(
                      data: '2 hours ago',
                      fontSize: AppSize.width(value: 14),
                      fontWeight: FontWeight.w500,
                      color: AppColors.black200,
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
