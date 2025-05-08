import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/screens/customer_booking_screen/controller/customer_booking_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/bottomSheet/feedback_ratting_bottom_sheet.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerBookingDetailsScreen extends StatelessWidget {
  const CustomerBookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext ontext) {
    final CustomerBookingScreenController controller = Get.put(
      CustomerBookingScreenController(),
    );
    return Scaffold(
      appBar: CustomAppBar(title: "Reservation Details"),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.cardBg,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: AppImage(
                        url:
                            "https://media.istockphoto.com/id/1650639866/photo/contact-us-telemarketing-and-crm-black-woman-in-customer-service-with-headset-and-smile-on.jpg?s=1024x1024&w=is&k=20&c=nX9mmVOUu21CerWDefxymgT44iNcvCtUpYWlfuRfsH4=",
                        width: AppSize.width(value: 95),
                        height: AppSize.width(value: 95),
                      ),
                    ),
                    const SizedBox(width: 10), // Image ar text er moddhe gap
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  data: "Booking ID",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "Category",
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
                                  data: "Date",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "Booking Amount",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "Booking Amount",
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
                                  fontSize: AppSize.width(value: 13),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.subTitle,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppText(
                                  data: "1458",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "Health & Wellness",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                  maxLines: 1,
                                ),
                                AppText(
                                  data: "Riverside Medical Center",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "25 jun 2025",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "300",
                                  fontSize: AppSize.width(value: 12),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "Brooklyn, New York",
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
                  ],
                ),
              ),
            ),
            Gap(height: 20),
            AppText(
              data: "Event organizer",
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: AppColors.subTitle,
            ),
            ProviderDetailsCard(),

            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: AppSize.width(value: 40)),
              child: AppButton(
                title: "Review",
                titleSize: AppSize.width(value: 20),
                titleColor: AppColors.black500,
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Get.bottomSheet(
                    FeedBackRattinigBottomSheet(controller: controller),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProviderDetailsCard extends StatelessWidget {
  const ProviderDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: AppSize.height(value: 120),
      height: 264,
      decoration: BoxDecoration(
        // color: AppColors.white400,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AppImage(
                    url:
                        "https://media.istockphoto.com/id/1650639866/photo/contact-us-telemarketing-and-crm-black-woman-in-customer-service-with-headset-and-smile-on.jpg?s=1024x1024&w=is&k=20&c=nX9mmVOUu21CerWDefxymgT44iNcvCtUpYWlfuRfsH4=",
                    width: AppSize.width(value: 100),
                    height: AppSize.width(value: 100),
                  ),
                ),
                Gap(width: AppSize.width(value: 10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      data: "Benjamin Daniel",
                      fontSize: AppSize.width(value: 24),
                      fontWeight: FontWeight.w500,
                      color: AppColors.subTitle,
                    ),
                    Gap(height: AppSize.width(value: 8)),
                    AppText(
                      data: "Event Manager",
                      fontSize: AppSize.width(value: 14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.subTitle,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10), // Image ar text er moddhe gap
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
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
                            data: "Category",
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
                            data: "Date",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Booking Amount",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Booking Amount",
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
                            color: AppColors.subTitle,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppText(
                            data: "1458",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Health & Wellness",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                            maxLines: 1,
                          ),
                          AppText(
                            data: "Riverside Medical Center",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "25 jun 2025",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "300",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Brooklyn, New York",
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
            ),
          ],
        ),
      ),
    );
  }
}
