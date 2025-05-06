import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_all_log/app_log.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/Cards/facility_info_card.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/search_bar/custom_search_bar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

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
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.customerBookmarkScreen);
                            },
                            child: AppImage(
                              path: AssetsIconsPath.bookmark,
                              width: AppSize.width(value: 26),
                              height: AppSize.width(value: 26),
                            ),
                          ),
                          SizedBox(width: AppSize.width(value: 12)),
                          AppImage(
                            path: AssetsIconsPath.notification,
                            width: AppSize.width(value: 26),
                            height: AppSize.width(value: 26),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // 10px gap
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: CustomSearchBar(hintText: "Search in Health & Wellness"),
            ),
            // 10px gap
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: AppText(
                data: "Category",
                fontSize: AppSize.width(value: 16),
                fontWeight: FontWeight.w600,
                color: AppColors.subTitle,
              ),
            ),
            // 10px gap
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: AppSize.width(value: 40),
                  width: AppSize.width(value: 104),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.customerHomeCategoryScreen,
                            arguments: items[index],
                          );
                          appLog(
                            'Customer Home Page Category Item Clicked ${items[index]}',
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          height: AppSize.width(value: 37),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.boxBg,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: AppColors.strock,
                              width: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return AppColors.customGradient.createShader(
                                bounds,
                              );
                            },
                            child: AppText(
                              data: items[index],
                              fontSize: AppSize.width(value: 14),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppSize.width(value: 10),
                ),
                child: CardTitleText(
                  mainText: "Recommended Events",
                  secondText: 1234,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: AppSize.width(value: 270),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: SizedBox(
                        width: AppSize.width(value: 310),
                        child: FacilityInfoCard(
                          imageUrl: AssetsImagesPath.img1,
                          facilityName: "Riverside Medical Center",
                          location: 'Brooklyn, New York',
                          reviewCount: 6545456,
                          numberOfPepole: 220,
                          rating: 4 / 5.0,
                          onBookNow: () {},
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppSize.width(value: 10),
                ),
                child: AppText(
                  data: "What’s a New?",
                  fontSize: AppSize.width(value: 16),
                  fontWeight: FontWeight.w600,
                  color: AppColors.subTitle,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: AppSize.width(value: 270),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: SizedBox(
                        width: AppSize.width(value: 310),
                        child: FacilityInfoCard(
                          imageUrl: AssetsImagesPath.img1,
                          facilityName: "Riverside Medical Center",
                          location: 'Brooklyn, New York',
                          reviewCount: 6545456,
                          numberOfPepole: 220,
                          rating: 4 / 5.0,
                          onBookNow: () {},
                        ),
                      ),
                    );
                  },
                ),
              ),
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

final List<String> items = [
  'Health & Wellness',
  'Dining',
  'Entertainment',
  'Dining',
  'Entertainment',
];
