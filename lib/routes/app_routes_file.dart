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
import 'package:w_a/screens/customer_navigation_screen/screens/notification_screen.dart';
import 'package:w_a/screens/customer_qr_code_screen/customer_qr_code_screen.dart';
import 'package:w_a/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:w_a/screens/provider_add_event_screen/provider_addevent_screen.dart';
import 'package:w_a/screens/provider_booked_client_screen/provider_booked_client_screen.dart';
import 'package:w_a/screens/provider_booking_details_screen/provider_booking_details_screen.dart';
import 'package:w_a/screens/provider_event_info_screen.dart/provider_event_info_screen.dart';
import 'package:w_a/screens/provider_home_screen/provider_home_screen.dart';
import 'package:w_a/screens/provider_navigation_screen/provider_navigation_screen.dart';
import 'package:w_a/screens/splash_screen/splash_screen.dart';

List<GetPage> appRoutesFile = <GetPage>[
  ////////// initial page
  GetPage(
    name: AppRoutes.splashScreen,
    binding: AppBindings(),
    page: () => SplashScreen(),
  ),
  GetPage(
    name: AppRoutes.onBoardingScreen,
    binding: AppBindings(),
    page: () => OnBoardingScreen(),
  ),
  // /////////// auth

  ///////////// navigation screen or main screen
  GetPage(
    name: AppRoutes.notificationScreen,
    binding: AppBindings(),
    page: () => NotificationScreen(),
  ),
  
  GetPage(
    name: AppRoutes.customerNavigationScreen,
    binding: AppBindings(),
    page: () => CustomerNavigationScreen(),
  ),
  GetPage(
    name: AppRoutes.providerNavigationScreen,
    binding: AppBindings(),
    page: () => ProviderNavigationScreen(),
  ),
  GetPage(
    name: AppRoutes.customerHomeScreen,
    binding: AppBindings(),
    page: () => CustomerHomeScreen(),
  ),
  GetPage(
    name: AppRoutes.providerHomeScreen,
    binding: AppBindings(),
    page: () => ProviderHomeScreen(),
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
  GetPage(
    name: AppRoutes.providerBookedClientScreen,
    binding: AppBindings(),
    page: () => ProviderBookedClientScreen(),
  ),
  GetPage(
    name: AppRoutes.providerBootingDetailsScreen,
    binding: AppBindings(),
    page: () => ProviderBookingDetailsScreen(),
  ),
  GetPage(
    name: AppRoutes.providerAddEventScreen,
    binding: AppBindings(),
    page: () => ProviderAddEventScreen(),
  ),
  GetPage(
    name: AppRoutes.providerEventInfoScreen,
    binding: AppBindings(),
    page: () => ProviderEventInfoScreen(),
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
