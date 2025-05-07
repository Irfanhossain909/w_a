

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreenController extends GetxController {
  RxBool isLoading = false.obs;
    RxBool isRememberMe = RxBool(false);

  // AuthRepository authRepository = AuthRepository();
  TextEditingController fullNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController reEnterPasswordTextEditingController = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();



   // Reactive variables
  RxBool isExpanded = false.obs;
  RxString? selectedOption = RxString('');

  // Functions
  void toggleContainer() {
    isExpanded.value = !isExpanded.value;
  }

  void selectOption(String option) {
    selectedOption?.value = option;
    isExpanded.value = false;
  }

  // Future<void> clickSignUpButton() async {
  //   try {
  //     if (signUpFormKey.currentState!.validate()) {
  //       isLoading.value = true;
  //       var repoResponse = await authRepository.signUp(fullName: fullNameTextEditingController.text, email: emailTextEditingController.text, password: passwordTextEditingController.text);
  //       if (repoResponse) {
  //         Get.toNamed(AppRoutes.otpVerificationScreen, arguments: {"email": emailTextEditingController.text});
  //       }
  //       isLoading.value = true;
  //     }
  //   } catch (e) {
  //     log("error form sign up click button $e");
  //     isLoading.value = true;
  //     AppSnackBar.error("Sign Up Fail ");
  //   }
  // }

  @override
  void onClose() {
    fullNameTextEditingController.dispose();
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    reEnterPasswordTextEditingController.dispose();
    super.onClose();
  }
}
