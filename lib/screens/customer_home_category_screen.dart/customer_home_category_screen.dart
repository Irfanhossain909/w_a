import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/Cards/facility_info_card.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerHomeCategoryScreen extends StatelessWidget {
  final String category = Get.arguments;
  CustomerHomeCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: category),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: Column(
          children: [
            FacilityInfoCard(
              imageUrl: AssetsImagesPath.img1,
              facilityName: "Riverside Medical Center",
              location: 'Brooklyn, New York',
              reviewCount: 6545456,
              numberOfPepole: 220,
              rating: 4 / 5.0,
              onBookNow: () {
                Get.toNamed(AppRoutes.customerEventInfoScreen , arguments: category);
              },
            ),
          ],
        ),
      ),
    );
  }
}


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.height = kToolbarHeight, // default AppBar height
  });

  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppText(
        data: title,
        fontSize: AppSize.width(value: 20),
        fontWeight: FontWeight.w600,
        color: AppColors.subTitle,
      ),
      centerTitle: true,
      leading: IconButton(
        icon: AppImage(
          path: AssetsIconsPath.arrowBack,
          width: AppSize.width(value: 24),
          height: AppSize.width(value: 24),
        ),
        onPressed: () => Get.back(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
