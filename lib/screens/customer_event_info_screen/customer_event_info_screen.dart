import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/screens/customer_event_info_screen/controller/customer_event_info_screen.dart';
import 'package:w_a/utils/app_all_log/app_log.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerEventInfoScreen extends StatelessWidget {
  final String category = Get.arguments;

  CustomerEventInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Event Information"),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: GetBuilder<CustomerEventInfoController>(
          init: CustomerEventInfoController(),
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
                              Icon(
                                Icons.star,
                                color: AppColors.yellow,
                                size: AppSize.width(value: 10),
                              ),
                              AppText(
                                data: "4.4/5",
                                fontSize: AppSize.width(value: 10),
                                fontWeight: FontWeight.w500,
                                color: AppColors.text,
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
                                  path: AssetsIconsPath.group,
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
                  Gap(height: AppSize.width(value: 14)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppSize.width(value: 12),
                    ),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: AppImage(
                        path: AssetsImagesPath.mapImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Gap(height: AppSize.width(value: 14)),
                  AppButton(
                    title: "Book Now",
                    gradient: AppColors.customGradient,
                    titleColor: AppColors.black500,
                    borderRadius: BorderRadius.circular(
                      AppSize.width(value: 12),
                    ),
                    onTap: () {
                      Get.toNamed(AppRoutes.customerCheckAvilabilityScreen);
                      appLog("Click Event Screen <<<<<<<<<<<<<<<to>>>>>>>>>>>> Check Avilability Screen");
                    },
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
