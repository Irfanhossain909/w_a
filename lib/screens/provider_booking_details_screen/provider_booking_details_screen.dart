import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';
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
              height: AppSize.width(value: 150),
              child: Column(
                children: [
                  Expanded(
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
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(
                                data: "Basic Package",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.black400,
                              ),
                              AppText(
                                data: "\$${210}",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.black400,
                                maxLines: 1,
                              ),
                              AppText(
                                data: "One Year",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.black400,
                              ),
                              AppText(
                                data: "08/10/2026",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.black400,
                              ),

                              AppText(
                                data: "08/12/2026",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w500,
                                color: AppColors.black400,
                              ),
                              AppText(
                                data: "Expaired",
                                fontSize: AppSize.width(value: 12),
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
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
