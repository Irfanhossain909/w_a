import 'package:get/get.dart';
import 'package:w_a/screens/customer_bookmark_screen/controller/custom_bookmark_controller.dart';

import 'package:w_a/screens/customer_check_availability_screen/controller/customer_check_availability_controller.dart';
import 'package:w_a/screens/customer_event_info_screen/controller/customer_event_info_screen.dart';
import 'package:w_a/screens/customer_home_category_screen.dart/controller/customer_home_category_controller.dart';
import 'package:w_a/screens/customer_navigation_screen/controllers/customer_navigation_screen_controller.dart';
import 'package:w_a/screens/provider_add_event_screen/controller/provider_addevent_controller.dart';
import 'package:w_a/screens/provider_booked_client_screen/controller/provider_booked_client_controller.dart';
import 'package:w_a/screens/provider_booking_details_screen/controller/provider_booking_details_controller.dart';
import 'package:w_a/screens/provider_event_info_screen.dart/controller/provider_event_info_screen.dart';
import 'package:w_a/screens/provider_navigation_screen/controllers/provider_navigation_screen_controller.dart';

class AppBindings extends Bindings {
  @override
  dependencies() {
    //==================== Customer Screens ==================
    // Get.lazyPut(() => CustomerHomeController());
    Get.lazyPut(() => CustomerNavigationScreenController());
    Get.lazyPut(() => CustomerHomeCategoryController());
    Get.lazyPut(() => CustomerEventInfoController());
    Get.lazyPut(() => CustomerCheckAvailabilityController());
    Get.lazyPut(() => CustomerBookmarkController());

    //====================Provider Screens==================
    Get.lazyPut(() => ProviderNavigationScreenController());
    Get.lazyPut(() => ProviderBookedClientController());
    Get.lazyPut(() => ProviderBookingDetailsController());
    Get.lazyPut(() => ProviderAddEventController());
    Get.lazyPut(() => ProviderEventInfoController());
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
