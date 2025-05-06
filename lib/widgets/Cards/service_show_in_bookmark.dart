import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ServiceShowInBookmark extends StatelessWidget {
  final String? imageUrl;
  final String? facilityName;
  final String? location;
  final int? reviewCount;
  final double? rating;
  final int? numberOfPepole;
  final VoidCallback? onBookNow;

  const ServiceShowInBookmark({
    super.key,
    this.imageUrl,
    this.facilityName,
    this.location,
    this.reviewCount,
    this.rating,
    this.onBookNow,
    this.numberOfPepole,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSize.width(value: 12)),
      decoration: BoxDecoration(
        color: AppColors.black900,
        borderRadius: BorderRadius.circular(AppSize.width(value: 12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.width(value: 12)),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: AppImage(
                    path: imageUrl ?? AssetsImagesPath.img1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.appBg.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppSize.width(value: 12)),
                    child: AppImage(
                      path: AssetsIconsPath.hartRed,
                      width: AppSize.width(value: 16),
                      height: AppSize.width(value: 16),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.appBg.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppSize.width(value: 12)),
                    child: Column(
                      children: [
                        AppText(
                          data: "May",
                          fontSize: AppSize.width(value: 12),
                          fontWeight: FontWeight.w500,
                          color: AppColors.text,
                        ),
                        AppText(
                          data: "05",
                          fontSize: AppSize.width(value: 12),
                          fontWeight: FontWeight.w400,
                          color: AppColors.text,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Gap(height: AppSize.width(value: 10)),

          // // Content
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name & Rating
                  AppText(
                    data: facilityName ?? "Riverside Medical Center",
                    fontSize: AppSize.width(value: 14),
                    fontWeight: FontWeight.w500,
                    color: AppColors.subTitle,
                    overflow: TextOverflow.ellipsis,
                  ),

                  // Location & Review
                  Row(
                    children: [
                      AppImage(
                        path: AssetsIconsPath.location,
                        width: AppSize.width(value: 9),
                        height: AppSize.width(value: 9),
                      ),
                      Gap(width: AppSize.width(value: 4)),
                      AppText(
                        data: location ?? "Brooklyn, New York",
                        fontSize: AppSize.width(value: 10),
                        fontWeight: FontWeight.w500,
                        color: AppColors.subTitle,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AppImage(
                        path: AssetsIconsPath.group,
                        width: AppSize.width(value: 9),
                        height: AppSize.width(value: 9),
                      ),
                      Gap(width: AppSize.width(value: 4)),
                      Text(
                        "${numberOfPepole ?? 0}/120",
                        style: const TextStyle(
                          color: AppColors.subTitle,
                          fontSize: 10,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 110,
                height: 30,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, 4),
                    end: Alignment(1.00, 0.50),
                    colors: [
                      const Color(0xFFFFD858),
                      const Color(0xFFFFB953),
                      const Color(0xFFFF954E),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Center(
                  child: AppText(
                    data: "Book Now",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black500,
                  ),
                ),
              ),
              // SizedBox(
              //   width: 110,
              //   height: 30,
              //   child: AppButton(
              //     title: "Book Now",
              //     borderRadius: BorderRadius.circular(AppSize.width(value: 40)),
              //     gradient: AppColors.customGradient,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
