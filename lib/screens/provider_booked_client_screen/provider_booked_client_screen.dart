import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProviderBookedClientScreen extends StatelessWidget {
  const ProviderBookedClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Booked Client"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true, // Important
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 12),
                    vertical: AppSize.width(value: 6),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 88,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF333839)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              16,
                            ), // 4 corner round
                            child: AppImage(
                              path: AssetsImagesPath.person,
                              width: AppSize.width(value: 72),
                              height: AppSize.width(value: 72),
                            ),
                          ),

                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                  data: "Brooklyn Simmons",
                                  fontSize: AppSize.width(value: 20),
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.subTitle,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText(
                                      data: "Booking iD:#54654",
                                      fontSize: AppSize.width(value: 12),
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.subTitle,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.providerBootingDetailsScreen);
                                      },
                                      child: Container(
                                        width: 81,
                                        height: 32,
                                      
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1,
                                              color: AppColors.yellow400,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: AppText(
                                          data: "Details",
                                          fontSize: AppSize.width(value: 16),
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.yellow400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
