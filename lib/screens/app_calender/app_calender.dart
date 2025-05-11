import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/screens/app_calender/controller/app_celender_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class AppCalender extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final List<String> months;
  final List<int> years;
  final Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;
  final bool Function(DateTime day)? isDayEnabled;
  final Function(String month) onMonthChanged;
  final Function(int year) onYearChanged;
  final VoidCallback onPrevYear;
  final VoidCallback onNextYear;

  const AppCalender({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.months,
    required this.years,
    required this.onDaySelected,
    required this.onMonthChanged,
    required this.onYearChanged,
    required this.onPrevYear,
    required this.onNextYear,
    this.isDayEnabled,
  });

  @override
  Widget build(BuildContext context) {
    final calendarController = Get.put(AppCalenderController());
    String currentMonth = months[focusedDay.month - 1];
    int currentYear = focusedDay.year;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.bottmSheet,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // ====== Header with Month & Year Dropdown ======
          Padding(
            padding: EdgeInsets.only(
              left: AppSize.width(value: 16),
              right: AppSize.width(value: 16),
              top: AppSize.width(value: 16),
            ),
            child: Row(
              children: [
                DropdownButton<String>(
                  value: currentMonth,
                  onChanged: (value) => onMonthChanged(value!),
                  icon: Container(),
                  underline: Container(),
                  items:
                      months
                          .map(
                            (month) => DropdownMenuItem(
                              value: month,
                              child: AppText(
                                data: month,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.subTitle,
                              ),
                            ),
                          )
                          .toList(),
                  alignment: Alignment.center,
                ),
                DropdownButton<int>(
                  value: currentYear,
                  onChanged: (value) => onYearChanged(value!),
                  icon: Container(),
                  underline: Container(),
                  isDense: true,
                  items:
                      years
                          .map(
                            (year) => DropdownMenuItem(
                              value: year,
                              child: AppText(
                                data: "$year",
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.subTitle,
                              ),
                            ),
                          )
                          .toList(),
                  alignment: Alignment.center,
                  dropdownColor: AppColors.white200,
                ),
                const Spacer(),
                // GestureDetector(
                //   onTap: () {
                //     onPrevYear;
                //   },
                //   child: AppImage(
                //     path: AssetsIconsPath.arrowBack,
                //     width: AppSize.width(value: 24),
                //     height: AppSize.width(value: 24),
                //   ),
                // ),
                // Gap(width: AppSize.width(value: 12)),
                // GestureDetector(
                //   onTap: () => onNextYear,
                //   child: AppImage(
                //     path: AssetsIconsPath.arrowright,
                //     width: AppSize.width(value: 24),
                //     height: AppSize.width(value: 24),
                //   ),
                // ),
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: AppColors.subTitle,
                  onPressed: onPrevYear,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  color: AppColors.subTitle,
                  onPressed: onNextYear,
                ),
              ],
            ),
          ),

          // ====== Calendar ======
          Padding(
            padding: EdgeInsets.all(20),
            child: Obx(
              () => TableCalendar(
                firstDay: DateTime(2000),
                lastDay: DateTime(2100),
                focusedDay: calendarController.focusedDay.value,
                selectedDayPredicate: (day) => false, // we don’t use this
                headerVisible: false,
                onDaySelected: (selectedDay, focusedDay) {
                  calendarController.focusedDay.value = focusedDay;
                },
                calendarBuilders: CalendarBuilders(
                  headerTitleBuilder: (context, day) {
                    // Check the day and apply colors accordingly
                    final isWeekend =
                        day.weekday == DateTime.saturday ||
                        day.weekday == DateTime.sunday;

                    // You can apply any color logic here
                    return Text(
                      DateFormat.E().format(day), // day name (e.g., Mon, Tue)
                      style: TextStyle(
                        color:
                            isWeekend
                                ? AppColors.primary
                                : AppColors
                                    .text, // Example: weekend days get a special color
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    );
                  },
                  defaultBuilder: (context, day, _) {
                    // Check if the day is in the current month
                    final isCurrentMonth = day.month == focusedDay.month;

                    // Check if the day is highlighted
                    final isHighlighted = calendarController.highlightedDates
                        .any((d) => isSameDay(d, day));

                    // If the day is highlighted
                    if (isHighlighted) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.error,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: AppText(
                          data: '${day.day}',
                          fontSize: AppSize.width(value: 16),
                          fontWeight: FontWeight.w400,
                          color: AppColors.text,
                        ),
                      );
                    }

                    // If it's the current month, apply a different color (e.g., white)
                    if (isCurrentMonth) {
                      return Container(
                        alignment: Alignment.center,
                        child: AppText(
                          data: '${day.day}',
                          fontSize: AppSize.width(value: 16),
                          fontWeight: FontWeight.w400,
                          color:
                              AppColors
                                  .text, // Color for dates in the current month
                        ),
                      );
                    }

                    // For other dates, return null or default styling
                    return null;
                  },
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: AppColors.text, // Weekday color
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  weekendStyle: TextStyle(
                    color: AppColors.text, // Weekend color
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
