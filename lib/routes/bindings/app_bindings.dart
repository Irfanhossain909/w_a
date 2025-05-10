import 'package:get/get.dart';
import 'package:w_a/screens/change_password_screen/controllers/change_password_screen_controller.dart';
import 'package:w_a/screens/conversation_screen/controllers/conversation_screen_controller.dart';
import 'package:w_a/screens/network_screen/controllers/network_screen_controller.dart';
import 'package:w_a/screens/customer_bookin_details_screen.dart/controller/customer_booking_details_controller.dart';
import 'package:w_a/screens/customer_bookmark_screen/controller/custom_bookmark_controller.dart';

import 'package:w_a/screens/customer_check_availability_screen/controller/customer_check_availability_controller.dart';
import 'package:w_a/screens/customer_event_info_screen/controller/customer_event_info_screen.dart';
import 'package:w_a/screens/customer_home_category_screen.dart/controller/customer_home_category_controller.dart';
import 'package:w_a/screens/customer_navigation_screen/controllers/customer_navigation_screen_controller.dart';
import 'package:w_a/screens/personal_info_screen/controllers/personal_info_controller.dart';
import 'package:w_a/screens/profile_edit_screen/controller/profile_edit_screen_controller.dart';
import 'package:w_a/screens/profile_screen/controllers/profile_controller.dart';
import 'package:w_a/screens/provider_add_event_screen/controller/provider_addevent_controller.dart';
import 'package:w_a/screens/provider_booked_client_screen/controller/provider_booked_client_controller.dart';
import 'package:w_a/screens/provider_booking_details_screen/controller/provider_booking_details_controller.dart';
import 'package:w_a/screens/provider_event_info_screen.dart/controller/provider_event_info_screen.dart';
import 'package:w_a/screens/provider_navigation_screen/controllers/provider_navigation_screen_controller.dart';
import 'package:w_a/screens/provider_qrcode_scanner/provider_qrcode_scanner.dart';
import 'package:w_a/screens/user_booking_date_time_screen/controller/app_celender_controller.dart';

class AppBindings extends Bindings {
  @override
  dependencies() {
    //Common for both Vustomer &  Provider===============
    Get.lazyPut(() => PersonalInfoController());
    Get.lazyPut(() => ProfileEditScreenController());
    Get.lazyPut(() => ChangePasswordScreenController());
    Get.lazyPut(() => NetworkScreenController());
    Get.lazyPut(() => ConversationScreenController());
    Get.lazyPut(() => UserBookingDateTimeController());

    //==================== Customer Screens ==================
    // Get.lazyPut(() => CustomerHomeController());
    Get.lazyPut(() => CustomerNavigationScreenController());
    Get.lazyPut(() => CustomerHomeCategoryController());
    Get.lazyPut(() => CustomerEventInfoController());
    Get.lazyPut(() => CustomerCheckAvailabilityController());
    Get.lazyPut(() => CustomerBookmarkController());
    Get.lazyPut(() => CustomerBookmarkController());
    Get.lazyPut(() => CustomerBookingDetailsController());

    //====================Provider Screens==================
    Get.lazyPut(() => ProviderNavigationScreenController());
    Get.lazyPut(() => ProviderBookedClientController());
    Get.lazyPut(() => ProviderBookingDetailsController());
    Get.lazyPut(() => ProviderAddEventController());
    Get.lazyPut(() => ProviderEventInfoController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => ProviderQrCodeScannerScreen());
    // Get.lazyPut(() => AddAndEditPostScreenController());
    // Get.lazyPut(() => AddPostSuccessfullyScreenController());
    // Get.lazyPut(() => ServicesScreenController());
    // Get.lazyPut(() => ListOffViewServicesController());
    // Get.lazyPut(() => ServicesDetailsScreenController());
    // Get.lazyPut(() => SearchScreenController());
    // Get.lazyPut(() => EighteenPlusWarningScreenController());
    // Get.lazyPut(() => ProfileScreenController());
    // Get.lazyPut(() => EditProfileScreenController());
    // Get.lazyPut(() => ConversationScreenController());
    // Get.lazyPut(() => PaymentMethodScreenController());
    // Get.lazyPut(() => AboutUsScreenController());
    // Get.lazyPut(() => TermsAndConditionScreenController());
    // Get.lazyPut(() => PrivacyAndPolicyScreenController());
    // Get.lazyPut(() => UserHistoryScreenController());
    // Get.lazyPut(() => ChangePasswordScreenController());
    // Get.lazyPut(() => TransactionHistoryScreenController());
    // Get.lazyPut(() => EReceiptScreenController());
  }
}
