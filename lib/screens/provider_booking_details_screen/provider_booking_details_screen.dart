import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProviderBookingDetailsScreen extends StatelessWidget {
  const ProviderBookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Booking Details"),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: AppSize.width(value: 88),
              //
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16), // 4 corner round
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
                        Gap(height: AppSize.width(value: 12)),
                        AppText(
                          data: "Booking iD: #54654",
                          fontSize: AppSize.width(value: 12),
                          fontWeight: FontWeight.w400,
                          color: AppColors.subTitle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: AppSize.width(value: 150),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(
                                data: "Booking ID",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w400,
                                color: AppColors.subTitle,
                              ),
                              AppText(
                                data: "Event Type",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w400,
                                color: AppColors.subTitle,
                              ),
                              AppText(
                                data: "Event Name",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w400,
                                color: AppColors.subTitle,
                              ),
                              AppText(
                                data: "Event Date",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w400,
                                color: AppColors.subTitle,
                              ),
                              AppText(
                                data: "Event Time",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w400,
                                color: AppColors.subTitle,
                              ),
                              AppText(
                                data: "Capacity",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w400,
                                color: AppColors.subTitle,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              6,
                              (index) => AppText(
                                data: ":",
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black300,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(
                                data: "#548970",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTitle,
                              ),
                              AppText(
                                data: "Health & Wellness",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTitle,
                                maxLines: 1,
                              ),
                              AppText(
                                data: "Riverside Medical Center",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTitle,
                              ),
                              AppText(
                                data: "25 jun 2025",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTitle,
                              ),

                              AppText(
                                data: "10:00 am",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTitle,
                              ),
                              AppText(
                                data: "160",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTitle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
