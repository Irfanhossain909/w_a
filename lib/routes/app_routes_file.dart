import 'package:get/get.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/routes/bindings/app_auth_binding.dart';
import 'package:w_a/routes/bindings/app_bindings.dart';
import 'package:w_a/screens/about_us_screen/about_us_screen.dart';
import 'package:w_a/screens/auth_screen/for_got_screen/for_got_screen.dart';
import 'package:w_a/screens/auth_screen/otp_verification_screen/otp_verification_screen.dart';
import 'package:w_a/screens/auth_screen/update_password_screen/update_password_screen.dart';
import 'package:w_a/screens/auth_screen/sign_up_screen/sign_up_screen.dart';
import 'package:w_a/screens/auth_screen/signin_screen/signin_screen.dart';
import 'package:w_a/screens/change_password_screen/change_password_screen.dart';
import 'package:w_a/screens/customer_bookin_details_screen.dart/controller/customer_booking_details_screen.dart';
import 'package:w_a/screens/customer_booking_confirm_screen/customer_booking_confirm_screen.dart';
import 'package:w_a/screens/customer_booking_screen/customer_booking_screen.dart';
import 'package:w_a/screens/customer_bookmark_screen/customer_bookmark_screen.dart';
import 'package:w_a/screens/customer_check_availability_screen/customer_check_avilability_screen.dart';
import 'package:w_a/screens/customer_event_info_screen/customer_event_info_screen.dart';
import 'package:w_a/screens/customer_home_category_screen.dart/customer_home_category_screen.dart';
import 'package:w_a/screens/customer_home_screen/customer_home_screen.dart';
import 'package:w_a/screens/customer_navigation_screen/customer_navigation_screen.dart';
import 'package:w_a/screens/customer_navigation_screen/screens/notification_screen.dart';
import 'package:w_a/screens/customer_qr_code_screen/customer_qr_code_screen.dart';
import 'package:w_a/screens/faq_screen/faq_screen.dart';
import 'package:w_a/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:w_a/screens/personal_info_screen/personal_info_screen.dart';
import 'package:w_a/screens/privacy_and_policy_screen/privacy_and_policy_screen.dart';
import 'package:w_a/screens/profile_edit_screen/profile_edit_screen.dart';
import 'package:w_a/screens/profile_screen/profile_screen.dart';
import 'package:w_a/screens/provider_add_event_screen/provider_addevent_screen.dart';
import 'package:w_a/screens/provider_booked_client_screen/provider_booked_client_screen.dart';
import 'package:w_a/screens/provider_booking_details_screen/provider_booking_details_screen.dart';
import 'package:w_a/screens/provider_event_info_screen.dart/provider_event_info_screen.dart';
import 'package:w_a/screens/provider_home_screen/provider_home_screen.dart';
import 'package:w_a/screens/provider_navigation_screen/controllers/provider_navigation_screen_controller.dart';
import 'package:w_a/screens/provider_navigation_screen/provider_navigation_screen.dart';
import 'package:w_a/screens/provider_qrcode_scanner/provider_qrcode_scanner.dart';
import 'package:w_a/screens/splash_screen/splash_screen.dart';
import 'package:w_a/screens/subscriptions_screen/subscriptions_screen.dart';
import 'package:w_a/screens/terms_and_condition_screen/terms_and_condition_screen.dart';

final ProviderNavigationScreenController providerNavigationControllerr =
    ProviderNavigationScreenController();

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
  /////////// auth
  GetPage(
    name: AppRoutes.signInScreen,
    binding: AppAuthBinding(),
    page: () => SignInScreen(),
  ),
  GetPage(
    name: AppRoutes.signUpScreen,
    binding: AppAuthBinding(),
    page: () => SignUpScreen(),
  ),
  GetPage(
    name: AppRoutes.otpScreen,
    binding: AppAuthBinding(),
    page: () => OtpVerificationScreen(),
  ),
  GetPage(
    name: AppRoutes.updatePasswordScreen,
    binding: AppAuthBinding(),
    page: () => UpdatePasswordScreen(),
  ),
  GetPage(
    name: AppRoutes.forgotPasswordScreen,
    binding: AppAuthBinding(),
    page: () => ForGotScreen(),
  ),

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
  GetPage(
    name: AppRoutes.profileScreen,
    binding: AppBindings(),
    page:
        () => ProfileScreen(
          providerNavigationControllerr: providerNavigationControllerr,
        ),
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
  GetPage(
    name: AppRoutes.customerBookingScreen,
    binding: AppBindings(),
    page: () => CustomerBookingScreen(),
  ),
  GetPage(
    name: AppRoutes.customerBookingDetailsScreen,
    binding: AppBindings(),
    page: () => CustomerBookingDetailsScreen(),
  ),
  GetPage(
    name: AppRoutes.subscriptionsScreen,
    binding: AppBindings(),
    page: () => SubsCriptionsScreen(),
  ),
  GetPage(
    name: AppRoutes.providerQrCodeScannerScreen,
    binding: AppBindings(),
    page: () => ProviderQrCodeScannerScreen(),
  ),

  ////////////////////  profile
  ///
  GetPage(
    name: AppRoutes.personalInfoScreen,
    binding: AppBindings(),
    page: () => PersonalInfoScreen(),
  ),
  GetPage(
    name: AppRoutes.profileEditScreen,
    binding: AppBindings(),
    page: () => ProfileEditScreen(),
  ),
  GetPage(
    name: AppRoutes.changePasswordScreen,
    binding: AppBindings(),
    page: () => ChangePasswordScreen(),
  ),
  GetPage(
    name: AppRoutes.aboutUsScreen,
    binding: AppBindings(),
    page: () => AboutUsScreen(),
  ),
  GetPage(
    name: AppRoutes.privicyAndPlicyScreen,
    binding: AppBindings(),
    page: () => PrivacyAndPolicyScreen(),
  ),
  GetPage(
    name: AppRoutes.termsAndConditionScreen,
    binding: AppBindings(),
    page: () => TermsAndConditionScreen(),
  ),
  GetPage(
    name: AppRoutes.faqScreen,
    binding: AppBindings(),
    page: () => FaqScreen(),
  ),

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
