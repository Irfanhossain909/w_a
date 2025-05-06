import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/Cards/facility_info_card.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
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
                Get.toNamed(
                  AppRoutes.customerEventInfoScreen,
                  arguments: category,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

