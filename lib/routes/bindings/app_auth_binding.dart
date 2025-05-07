import 'package:get/get.dart';
import 'package:w_a/screens/auth_screen/otp_verification_screen/controllers/otp_verification_screen_controller.dart';
import 'package:w_a/screens/auth_screen/sign_up_screen/controllers/sign_up_screen_controller.dart';
import 'package:w_a/screens/auth_screen/signin_screen/controller/sign_in_screen_controller.dart';

class AppAuthBinding extends Bindings {
  @override
  dependencies() {
    Get.lazyPut(() => SignInScreenController());
    Get.lazyPut(() => SignUpScreenController());
    // Get.lazyPut(() => ForGotScreenController());
    Get.lazyPut(() => OtpVerificationScreenController());
    // Get.lazyPut(() => ResetPasswordScreenController());
  }
}
