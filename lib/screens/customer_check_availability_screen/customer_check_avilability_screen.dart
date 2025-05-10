import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/screens/app_calender/app_calender.dart';
import 'package:w_a/screens/app_calender/controller/app_celender_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_input_widget_three.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerCheckAvilabilityScreen extends StatelessWidget {
  final AppCalenderController controller = Get.put(AppCalenderController());
  CustomerCheckAvilabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Check Availability"),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: AppSize.width(value: 16),
          right: AppSize.width(value: 16),
          bottom: AppSize.width(value: 30),
        ),
        child: AppButton(
          title: "Confirm",
          titleColor: AppColors.black500,
          gradient: AppColors.customGradient,
          borderRadius: BorderRadius.circular(AppSize.width(value: 12)),
          onTap: () {
            Get.toNamed(AppRoutes.customerBookingConfirmScreen);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
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
              Gap(height: AppSize.width(value: 16)),
              AppText(
                data: "Booking Hour",
                fontSize: AppSize.width(value: 24),
                fontWeight: FontWeight.w500,
                color: AppColors.white600,
              ),
              Gap(height: AppSize.width(value: 12)),
              GridView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 10, // Change to your desired number of items
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // 6 items per row
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 2, // Width to height ratio
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: ShapeDecoration(
                      color: AppColors.error,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: AppText(
                        data: "06:00",
                        fontSize: AppSize.width(value: 12),
                        color: AppColors.white50,
                      ),
                    ),
                  );
                },
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // optional, based on your use case
              ),

              AppText(
                data: "Venue  Analytes",
                fontSize: AppSize.width(value: 24),
                fontWeight: FontWeight.w500,
                color: AppColors.subTitle,
              ),
              SizedBox(
                width: double.infinity,
                height: AppSize.width(value: 50),
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
                                  data: "Total Capacity",
                                  fontSize: AppSize.width(value: 14),
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "Total left",
                                  fontSize: AppSize.width(value: 14),
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
                                2,
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
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppText(
                                  data: "450",
                                  fontSize: AppSize.width(value: 14),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.subTitle,
                                ),
                                AppText(
                                  data: "220",
                                  fontSize: AppSize.width(value: 14),
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.subTitle,
                                  maxLines: 1,
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
              AppInputWidgetThree(
                title: "Enter Attendance Amount",
                fillColor: AppColors.boxBg,
                style: TextStyle(color: AppColors.subTitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
