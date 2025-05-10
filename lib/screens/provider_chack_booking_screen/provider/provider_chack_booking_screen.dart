// import 'package:flutter/material.dart';
// import 'package:w_a/const/app_colors.dart';
// import 'package:w_a/utils/app_size.dart';
// import 'package:w_a/utils/gap.dart';
// import 'package:w_a/widgets/button/app_button.dart';
// import 'package:w_a/widgets/texts/app_text.dart';

// class ProviderChackBookingScreen extends StatelessWidget {
//   const ProviderChackBookingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: AppText(
//           data: "My Plan",
//           fontSize: AppSize.width(value: 20),
//           fontWeight: FontWeight.w400,
//           color: AppColors.black100,
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(AppSize.width(value: 16)),
//         child: Column(
//           children: [
//             SizedBox(
//               width: double.infinity,
//               height: AppSize.width(value: 150),
//               child: Column(
//                 children: [
//                   Expanded(
//                     child: Row(
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               AppText(
//                                 data: "Plan Name",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w300,
//                                 color: AppColors.black300,
//                               ),
//                               AppText(
//                                 data: "Price",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w400,
//                                 color: AppColors.black300,
//                               ),
//                               AppText(
//                                 data: "Duration",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w400,
//                                 color: AppColors.black300,
//                               ),
//                               AppText(
//                                 data: "Start Date",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w400,
//                                 color: AppColors.black300,
//                               ),
//                               AppText(
//                                 data: "Expired Date",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w400,
//                                 color: AppColors.black300,
//                               ),
//                               AppText(
//                                 data: "Status",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w400,
//                                 color: AppColors.black300,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           flex: 1,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: List.generate(
//                               6,
//                               (index) => AppText(
//                                 data: ":",
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColors.black300,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           flex: 4,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               AppText(
//                                 data: "Basic Package",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColors.black400,
//                               ),
//                               AppText(
//                                 data: "\$${210}",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColors.black400,
//                                 maxLines: 1,
//                               ),
//                               AppText(
//                                 data: "One Year",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColors.black400,
//                               ),
//                               AppText(
//                                 data: "08/10/2026",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColors.black400,
//                               ),

//                               AppText(
//                                 data: "08/12/2026",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColors.black400,
//                               ),
//                               AppText(
//                                 data: "Expaired",
//                                 fontSize: AppSize.width(value: 12),
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.red,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Gap(height: AppSize.width(value: 100)),
//             AppButton(
//               title: "Renew",
//               onTap: () {
//                 // Get.toNamed(AppRoutes.subscriptionScreen);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProviderChackBookingScreen extends StatelessWidget {
  const ProviderChackBookingScreen({super.key});

  @override
  Widget build(BuildContext ontext) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          data: "Reservation Details",
          fontSize: AppSize.width(value: 20),
          fontWeight: FontWeight.w400,
          color: AppColors.white100,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProviderDetailsCard(),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: AppSize.width(value: 100)),
              child: AppButton(
                title: "Review",
                titleColor: AppColors.black900,
                borderRadius: BorderRadius.circular(12),
                titleSize: AppSize.width(value: 20),
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
                    path: AssetsImagesPath.person,
                    width: AppSize.width(value: 72),
                    height: AppSize.width(value: 72),
                  ),
                ),
                Gap(width: AppSize.width(value: 10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      data: "Brooklyn Simmons",
                      fontSize: AppSize.width(value: 24),
                      fontWeight: FontWeight.w500,
                      color: AppColors.subTitle,
                    ),
                    Row(
                      children: [
                        AppImage(
                          path: AssetsIconsPath.location,
                          width: AppSize.width(value: 13),
                          height: AppSize.width(value: 13),
                        ),
                        Gap(width: AppSize.width(value: 8)),
                        AppText(
                          data: "Brooklyn, New York",
                          fontSize: AppSize.width(value: 12),
                          fontWeight: FontWeight.w500,
                          color: AppColors.black300,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Gap(
              height: AppSize.width(value: 10),
            ), // Image ar text er moddhe gap
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
                            color: AppColors.black400,
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
                          AppText(
                            data: "Status",
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
                          7,
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
                          AppText(
                            data: "Absent",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent,
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
