import 'package:get/get.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/routes/bindings/app_bindings.dart';
import 'package:w_a/screens/customer_booking_confirm_screen/customer_booking_confirm_screen.dart';
import 'package:w_a/screens/customer_bookmark_screen/customer_bookmark_screen.dart';
import 'package:w_a/screens/customer_check_availability_screen/customer_check_avilability_screen.dart';
import 'package:w_a/screens/customer_event_info_screen/customer_event_info_screen.dart';
import 'package:w_a/screens/customer_home_category_screen.dart/customer_home_category_screen.dart';
import 'package:w_a/screens/customer_home_screen/customer_home_screen.dart';
import 'package:w_a/screens/customer_navigation_screen/customer_navigation_screen.dart';
import 'package:w_a/screens/customer_qr_code_screen/customer_qr_code_screen.dart';

List<GetPage> appRoutesFile = <GetPage>[
  // ////////// initial page

  // /////////// auth

  ///////////// navigation screen or main screen
  GetPage(
    name: AppRoutes.customerNavigationScreen,
    binding: AppBindings(),
    page: () => CustomerNavigationScreen(),
  ),
  GetPage(
    name: AppRoutes.customerHomeScreen,
    binding: AppBindings(),
    page: () => CustomerHomeScreen(),
  ),
  GetPage(
    name: AppRoutes.customerHomeCategoryScreen,
    binding: AppBindings(),
    page: () => CustomerHomeCategoryScreen(),
  ),

  // /////////////  services
  GetPage(
    name: AppRoutes.customerEventInfoScreen,
    binding: AppBindings(),
    page: () => CustomerEventInfoScreen(),
  ),
  GetPage(
    name: AppRoutes.customerCheckAvilabilityScreen,
    binding: AppBindings(),
    page: () => CustomerCheckAvilabilityScreen(),
  ),
  GetPage(
    name: AppRoutes.customerBookmarkScreen,
    binding: AppBindings(),
    page: () => CustomerBookmarkScreen(),
  ),

  ////////////////////  profile

  ////////////////// conversation  screen

  // ///////////////// payment

  /////////////// more screens
  GetPage(
    name: AppRoutes.customerBookingConfirmScreen,
    binding: AppBindings(),
    page: () => CustomerBookingConfirmScreen(),
  ),
  GetPage(
    name: AppRoutes.customerQRcodeScreen,
    binding: AppBindings(),
    page: () => CustomerQrCodeScreen(),
  ),

  // ////////////////// account

  // ///////////  receipt
];
