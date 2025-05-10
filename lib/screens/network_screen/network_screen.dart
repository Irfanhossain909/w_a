import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/screens/network_screen/controllers/network_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image_circular.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NetworkScreenController(),
      builder: (controller) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(AppSize.width(value: 100)),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: AppButton(
                  title: "+ Create New Community",
                  titleSize: AppSize.width(value: 20),
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.bottmSheet,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize:
                                MainAxisSize
                                    .min, // 👈 content height-e wrap korbe
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Align(
                                  alignment: Alignment(1, 1),
                                  child: Icon(
                                    Icons.close,
                                    size: AppSize.width(value: 20),
                                    color: AppColors.subTitle,
                                  ),
                                ),
                              ),
                              Gap(height: AppSize.size.width * 0.1),
                              AppText(
                                fontSize: AppSize.width(value: 28),
                                fontWeight: FontWeight.w500,
                                color: AppColors.subTitle,
                                data: 'Create a new\ncommunity',
                                textAlign: TextAlign.center,
                              ),
                              Gap(height: AppSize.width(value: 12)),
                              AppText(
                                height: 2,
                                fontSize: AppSize.width(value: 16),
                                fontWeight: FontWeight.w400,
                                color: AppColors.subTitle,
                                data:
                                    'Bring together a neighborhcod, school or\nmore, Create topic-based groups for\nmembers, and easily send them admin\nannouncements.',
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSize.width(value: 16),
                                  vertical: AppSize.width(value: 40),
                                ),
                                child: AppButton(
                                  title: "Get Started",
                                  titleSize: AppSize.width(value: 20),
                                  onTap: () {
                                    Get.offNamed(
                                      AppRoutes.createCommiunityScreen,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      isScrollControlled:
                          true, // 👈 Must add this to allow height wrap
                    );
                  },
                ),
              ),
            ),
          ),

          body: ListView.builder(
            itemCount: 1, // Static data count
            itemBuilder: (context, index) {
              return ChatUserCard(
                
              );
            },
          ),
        );
      },
    );
  }
}

class ChatUserCard extends StatelessWidget {
  const ChatUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.conversationScreen);
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.black500,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppSize.width(value: 12),
                horizontal: AppSize.width(value: 16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppImageCircular(
                    path: AssetsImagesPath.person,
                    width: AppSize.width(value: 40),
                    height: AppSize.width(value: 40),
                  ),
                  SizedBox(width: AppSize.width(value: 6)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          data: "The Booking Squad",
                          fontSize: AppSize.width(value: 20),
                          fontWeight: FontWeight.w500,
                          color: AppColors.subTitle,
                        ),
                        AppText(
                          data: "Hey there! ",
                          fontSize: AppSize.width(value: 20),
                          fontWeight: FontWeight.w500,
                          color: AppColors.subTitle.withOpacity(0.6),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                  AppText(
                    data: '9:00 am',
                    textAlign: TextAlign.right,
                    color: AppColors.text,
                    fontSize: AppSize.width(value: 12),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
