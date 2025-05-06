
import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class FacilityInfoCard extends StatelessWidget {
  final String? imageUrl;
  final String? facilityName;
  final String? location;
  final int? reviewCount;
  final double? rating;
  final int? numberOfPepole;
  final VoidCallback? onBookNow;

  const FacilityInfoCard({
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
                  child: AppImage(path: imageUrl ?? '', fit: BoxFit.cover),
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
                      path: AssetsIconsPath.hart,
                      width: AppSize.width(value: 16),
                      height: AppSize.width(value: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Gap(height: AppSize.width(value: 10)),

          // Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name & Rating
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AppText(
                      data: facilityName ?? "Unknown Facility",
                      fontSize: AppSize.width(value: 12),
                      fontWeight: FontWeight.w500,
                      color: AppColors.subTitle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.yellow,
                        size: AppSize.width(value: 10),
                      ),
                      AppText(
                        data: "${rating?.toStringAsFixed(1) ?? "0.0"}/5",
                        fontSize: AppSize.width(value: 10),
                        fontWeight: FontWeight.w500,
                        color: AppColors.text,
                      ),
                    ],
                  ),
                ],
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
                  Expanded(
                    child: AppText(
                      data: location ?? "Unknown Location",
                      fontSize: AppSize.width(value: 8),
                      fontWeight: FontWeight.w500,
                      color: AppColors.subTitle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AppImage(
                    path: AssetsIconsPath.group,
                    width: AppSize.width(value: 9),
                    height: AppSize.width(value: 9),
                  ),
                  Gap(width: AppSize.width(value: 4)),
                  Expanded(
                    child: Text(
                      "${numberOfPepole ?? 0}",
                      style: const TextStyle(
                        color: AppColors.subTitle,
                        fontSize: 8,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  AppText(
                    data: "${reviewCount ?? 0} reviews",
                    fontSize: AppSize.width(value: 10),
                    fontWeight: FontWeight.w500,
                    color: AppColors.text,
                  ),
                ],
              ),
              Gap(height: AppSize.width(value: 6)),

              // Book Now Button
              AppButton(
                title: "Book Now",
                titleColor: AppColors.black400,
                borderRadius: BorderRadius.circular(40),
                height: AppSize.width(value: 40),
                gradient: AppColors.customGradient,
                onTap:
                    onBookNow ??
                    () {}, // fallback if null
              ),
            ],
          ),
        ],
      ),
    );
  }
}
