
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class UserBookingDateTimeController extends GetxController {
  Rx<DateTime> focusedDay = DateTime.now().obs;
  Rx<DateTime?> selectedDay = Rx<DateTime?>(null);

  final List<String> months = List.generate(12, (index) => DateFormat.MMMM().format(DateTime(0, index + 1)));
  final List<int> years = List.generate(50, (index) => DateTime.now().year - 25 + index);


   final highlightedDates = <DateTime>[
    DateTime(2025, 5, 12),
    DateTime(2025, 5, 15),
    DateTime(2025, 5, 20),
  ];
  
  


  void selectMonth(String monthName) {
    int month = months.indexOf(monthName) + 1;
    focusedDay.value = DateTime(focusedDay.value.year, month, 1);
  }

  void selectYear(int year) {
    focusedDay.value = DateTime(year, focusedDay.value.month, 1);
  }

  void goToNextYear() {
    focusedDay.value = DateTime(focusedDay.value.year + 1, focusedDay.value.month, 1);
  }

  void goToPreviousYear() {
    focusedDay.value = DateTime(focusedDay.value.year - 1, focusedDay.value.month, 1);
  }

  void selectDay(DateTime selected) {
    if (!selected.isBefore(focusedDay.value)) {
      selectedDay.value = selected;
    }
  }

  bool isDayEnabled(DateTime day) {
    return !day.isBefore(focusedDay.value);
  }
}
