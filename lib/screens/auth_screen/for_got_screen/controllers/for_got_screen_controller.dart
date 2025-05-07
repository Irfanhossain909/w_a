import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForGotScreenController extends GetxController {
  // final AuthRepository authRepository = AuthRepository();
  RxBool isLoading = false.obs;
  GlobalKey<FormState> forGotScreenKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();

  // Future<void> forgotFunction() async {
  //   try {
  //     isLoading.value = true;
  //     var repoData = await authRepository.forgot(email: emailTextEditingController.text);
  //     if (repoData) {
  //       Get.toNamed(AppRoutes.otpVerificationScreen, arguments: emailTextEditingController.text);
  //     }

  //     isLoading.value = false;
  //   } catch (e) {
  //     errorLog("forgot function", e);

  //     isLoading.value = false;
  //   }
  // }

  // checkAndSendOtp() {
  //   try {
  //     if (forGotScreenKey.currentState!.validate()) {
  //       forgotFunction();
  //     }
  //   } catch (e) {
  //     errorLog("forgot check otp", e);
  //   }
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  //   emailTextEditingController.dispose();
  // }
}
