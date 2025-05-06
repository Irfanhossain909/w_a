import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/screens/provider_event_info_screen.dart/controller/provider_event_info_screen.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProviderEventInfoScreen extends StatelessWidget {
  const ProviderEventInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Event Information",
        trelling: AppImage(
          path: AssetsIconsPath.edit,
          width: AppSize.width(value: 24),
          height: AppSize.width(value: 24),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: GetBuilder<ProviderEventInfoController>(
          init: ProviderEventInfoController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  // Big image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppSize.width(value: 12),
                    ),
                    child: Image.network(
                      controller.selectedImage,
                      width: double.infinity,
                      height: AppSize.width(value: 220),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gap(height: AppSize.width(value: 12)),
                  // Small image list
                  SizedBox(
                    height: AppSize.width(value: 78),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.images.length,
                      itemBuilder: (context, index) {
                        final img = controller.images[index];
                        return GestureDetector(
                          onTap: () => controller.selectImage(img),
                          child: Container(
                            margin: EdgeInsets.only(
                              right: AppSize.width(value: 4),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    controller.selectedImage == img
                                        ? Colors.blue
                                        : Colors.transparent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(
                                AppSize.width(value: 8),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                AppSize.width(value: 8),
                              ),
                              child: Image.network(
                                img,
                                width: AppSize.width(value: 78),
                                height: AppSize.width(value: 78),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Gap(height: AppSize.width(value: 12)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name & Rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: AppText(
                              data: "Unknown Facility",
                              fontSize: AppSize.width(value: 16),
                              fontWeight: FontWeight.w600,
                              color: AppColors.subTitle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            children: [
                              AppImage(
                                path: AssetsIconsPath.calender,
                                width: AppSize.width(value: 12),
                                height: AppSize.width(value: 12),
                              ),
                              Gap(width: AppSize.width(value: 4)),
                              ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return AppColors.customGradient.createShader(
                                    bounds,
                                  );
                                },
                                child: AppText(
                                  data: "25 jun 2025",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Gap(height: AppSize.width(value: 6)),
                      Row(
                        children: [
                          // First set: left-aligned
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppImage(
                                  path: AssetsIconsPath.location,
                                  width: AppSize.width(value: 13),
                                  height: AppSize.width(value: 13),
                                ),
                                Gap(width: AppSize.width(value: 4)),
                                Flexible(
                                  child: AppText(
                                    data: "Unknown Location",
                                    fontSize: AppSize.width(value: 12),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.subTitle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Middle set: center-aligned
                          Expanded(
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  AppImage(
                                    path: AssetsIconsPath.group,
                                    width: AppSize.width(value: 13),
                                    height: AppSize.width(value: 13),
                                  ),
                                  Gap(width: AppSize.width(value: 4)),
                                  AppText(
                                    data: "123",
                                    fontSize: AppSize.width(value: 12),
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.subTitle,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Last set: right-aligned
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AppImage(
                                  path: AssetsIconsPath.call,
                                  width: AppSize.width(value: 13),
                                  height: AppSize.width(value: 13),
                                ),
                                Gap(width: AppSize.width(value: 4)),
                                AppText(
                                  data: "123456789",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.subTitle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Gap(height: AppSize.width(value: 12)),
                      Padding(
                        padding: EdgeInsets.only(
                          top: AppSize.width(value: 10),
                          bottom: AppSize.width(value: 4),
                        ),
                        child: AppText(
                          data: "Description",
                          fontSize: AppSize.width(value: 16),
                          fontWeight: FontWeight.w600,
                          color: AppColors.subTitle,
                        ),
                      ),
                      // Book Now Button
                    ],
                  ),

                  AppText(
                    data:
                        """Riverside Medical Center is a leading healthcare facility offering comprehensive medical services, including emergency care, surgeries, and specialized treatments. With advanced technology and dedicated professionals, it provides exceptional care to enhance patient well-being and recovery in a compassionate environment.""",
                    textAlign: TextAlign.justify,
                    fontSize: AppSize.width(value: 12),
                    fontWeight: FontWeight.w400,
                    color: AppColors.subTitle,
                    height: 1.7,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reviews',
                        style: TextStyle(
                          color: Color(0xFFFFA500), // Orange color
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See more (4.5)',
                        style: TextStyle(
                          color: Color(0xFF7CFC00), // Light green
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),

                  ReviewCard(
                    reviewerName: 'Charolette Hanlin',
                    reviewDate: 'Feb 3, 2025',
                    reviewText:
                        'Jenny is very professional in her work and responsive. I have consulted and my problem is solved. 😍😍',
                    postedTimeAgo: '2 hours',
                    imagePath: AssetsImagesPath.person,
                    rating: 5,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String reviewerName;
  final String reviewDate;
  final String reviewText;
  final String postedTimeAgo;
  final String imagePath;
  final double rating; // Optional for future use

  const ReviewCard({
    super.key,
    required this.reviewerName,
    required this.reviewDate,
    required this.reviewText,
    required this.postedTimeAgo,
    required this.imagePath,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E), // Dark background
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Row(
            children: [
              CircleAvatar(radius: 20, backgroundImage: AssetImage(imagePath)),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewerName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    reviewDate,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: List.generate(5, (index) {
                  return const Icon(Icons.star, color: Colors.amber, size: 18);
                }),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            reviewText,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 6),
          Text(
            postedTimeAgo,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
