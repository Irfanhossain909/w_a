import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerBookingDetailsScreen extends StatelessWidget {
  const CustomerBookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext ontext) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          data: "Reservation Details",
          fontSize: AppSize.width(value: 20),
          fontWeight: FontWeight.w400,
          color: AppColors.white700,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: AppSize.height(value: 116),
              decoration: BoxDecoration(
                color: AppColors.cardBg,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: AppImage(
                        url:
                            "https://media.istockphoto.com/id/1650639866/photo/contact-us-telemarketing-and-crm-black-woman-in-customer-service-with-headset-and-smile-on.jpg?s=1024x1024&w=is&k=20&c=nX9mmVOUu21CerWDefxymgT44iNcvCtUpYWlfuRfsH4=",
                        width: AppSize.width(value: 86),
                        height: AppSize.width(value: 86),
                      ),
                    ),
                    const SizedBox(width: 10), // Image ar text er moddhe gap
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  AppText(
                                    data: "Booking ID",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.subTitle,
                                  ),
                                  AppText(
                                    data: "Category",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.subTitle,
                                  ),
                                  AppText(
                                    data: "Event Name",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.subTitle,
                                  ),
                                  AppText(
                                    data: "Date",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.subTitle,
                                  ),
                                  AppText(
                                    data: "Booking Amount",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.subTitle,
                                  ),
                                  AppText(
                                    data: "Booking Amount",
                                    fontSize: 11,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
            ),
            Gap(height: 20),
            AppText(
              data: "Provider Details",
              fontSize: AppSize.width(value: 17),
              fontWeight: FontWeight.w500,
              color: AppColors.black200,
            ),
            ProviderDetailsCard(),
            Gap(height: AppSize.width(value: 20)),
            AppText(
              data:
                  "If you are interested in receiving services, please send an appointment request to a BookRite professional.",
              fontSize: AppSize.width(value: 16),
              fontWeight: FontWeight.w400,
              color: AppColors.white800,
              textAlign: TextAlign.center,
            ),
            Gap(height: AppSize.width(value: 20)),
            AppButton(title: "Review"),
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
                      data: "Michael Robert ",
                      fontSize: AppSize.width(value: 24),
                      fontWeight: FontWeight.w500,
                      color: AppColors.black300,
                    ),
                    Gap(height: AppSize.width(value: 6)),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: AppSize.width(value: 8),
                          horizontal: AppSize.width(value: 16),
                        ),
                        child: Row(
                          children: [
                            AppImage(
                              path: AssetsIconsPath.email,
                              width: AppSize.width(value: 13),
                              height: AppSize.width(value: 13),
                            ),
                            Gap(width: AppSize.width(value: 4)),
                            AppText(
                              data: "Chat",
                              fontSize: AppSize.width(value: 13),
                              fontWeight: FontWeight.w500,
                              color: AppColors.blue,
                            ),
                          ],
                        ),
                      ),
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
                            data: "Service",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "Total Service",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "Price",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "Rating",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "Experience",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "Address",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
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
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppText(
                            data: "House Cleaning",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "520",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                            maxLines: 1,
                          ),
                          AppText(
                            data: "\$450",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "(4.5/5)",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "5 Years",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
                          ),
                          AppText(
                            data: "437 Star St, Los Angeles, USA",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.black400,
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
