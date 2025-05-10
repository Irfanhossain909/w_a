import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/screens/provider_booked_client_screen/provider_booked_client_screen.dart';
import 'package:w_a/screens/user_booking_date_time_screen/controller/app_celender_controller.dart';
import 'package:w_a/screens/user_booking_date_time_screen/app_calender.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProviderHomeScreen extends StatelessWidget {
  final UserBookingDateTimeController controller = Get.put(
    UserBookingDateTimeController(),
  );
  ProviderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
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
                      AppText(
                        data: "Booking Monitoring",
                        fontSize: AppSize.width(value: 24),
                        fontWeight: FontWeight.w500,
                        color: AppColors.white600,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.notificationScreen);
                        },
                        child: AppImage(
                          path: AssetsIconsPath.notification,
                          width: AppSize.width(value: 26),
                          height: AppSize.width(value: 26),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Obx(
                () => AppCalender(
                  focusedDay: controller.focusedDay.value,
                  selectedDay: controller.selectedDay.value,
                  months: controller.months,
                  years: controller.years,
                  onDaySelected: (selected, focused) {
                    controller.focusedDay.value = focused;
                    controller.selectDay(selected);
                  },
                  onMonthChanged: (month) => controller.selectMonth(month),
                  onYearChanged: (year) => controller.selectYear(year),
                  onPrevYear: controller.goToPreviousYear,
                  onNextYear: controller.goToNextYear,
                  isDayEnabled: controller.isDayEnabled,
                ),
              ),
            ),
            SliverToBoxAdapter(child: Gap(height: AppSize.width(value: 16))),
            SliverToBoxAdapter(
              child: AppText(
                data: "Booking Hour",
                fontSize: AppSize.width(value: 24),
                fontWeight: FontWeight.w500,
                color: AppColors.white600,
              ),
            ),
            SliverToBoxAdapter(child: Gap(height: AppSize.width(value: 12))),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    decoration: ShapeDecoration(
                      color: AppColors.error,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: AppText(
                        data: "10:00",
                        fontSize: AppSize.width(value: 12),
                        color: AppColors.white50,
                      ),
                    ),
                  );
                },
                childCount: 30, // Change to your desired number of items
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6, // 6 items per row
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2.5, // Adjust for width/height ratio
              ),
            ),
            SliverToBoxAdapter(child: Gap(height: AppSize.width(value: 16))),
            SliverToBoxAdapter(
              child: AppText(
                data: "Venue  Analytes",
                fontSize: AppSize.width(value: 24),
                fontWeight: FontWeight.w500,
                color: AppColors.subTitle,
              ),
            ),
            SliverToBoxAdapter(child: Gap(height: AppSize.width(value: 12))),
            SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                height: AppSize.width(value: 65),
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
                                  data: "Capacity",
                                  fontSize: AppSize.width(value: 20),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "Present",
                                  fontSize: AppSize.width(value: 20),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "Absent",
                                  fontSize: AppSize.width(value: 20),
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
                                3,
                                (index) => AppText(
                                  data: ":",
                                  fontSize: AppSize.width(value: 13),
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
                                  data: "160",
                                  fontSize: AppSize.width(value: 20),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "120",
                                  fontSize: AppSize.width(value: 20),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.subTitle,
                                  maxLines: 1,
                                ),
                                AppText(
                                  data: "40",
                                  fontSize: AppSize.width(value: 20),
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
            ),
            SliverToBoxAdapter(child: Gap(height: AppSize.width(value: 16))),

            itemTitleOption(
              onTapCall: () {
                Get.toNamed(AppRoutes.providerBookedClientScreen);
              },
              name: 'Booked Client',
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 12),
                    vertical: AppSize.width(value: 6),
                  ),
                  child: ClientProfileCard(),
                );
              }, childCount: 10),
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

SliverToBoxAdapter itemTitleOption({
  required void Function()? onTapCall,
  required String name,
}) {
  return SliverToBoxAdapter(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          data: name,
          fontWeight: FontWeight.w600,
          fontSize: AppSize.width(value: 20),
          color: AppColors.subTitle,
        ),
        GestureDetector(
          onTap: onTapCall,
          child: AppText(
            data: "View All",
            fontWeight: FontWeight.w400,
            color: AppColors.green,
            fontSize: AppSize.width(value: 16),
          ),
        ),
      ],
    ),
  );
}

final List<String> items = [
  'Health & Wellness',
  'Dining',
  'Entertainment',
  'Dining',
  'Entertainment',
];
