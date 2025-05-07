import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordScreenController extends GetxController {
  RxBool isLoading = false.obs;
  // AuthRepository authRepository = AuthRepository();
  TextEditingController oldPasswordTextEditingController = TextEditingController();
  TextEditingController newPasswordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController = TextEditingController();
  GlobalKey<FormState> changePasswordKey = GlobalKey<FormState>();

  clickChangePasswordButton() {
    try {
      if (isLoading.value) return;
      if (changePasswordKey.currentState!.validate()) {
        changePassword();
      }
    } catch (e) {
      log("error form click change password button : $e");
    }
  }

  Future<void> changePassword() async {
    // try {
    //   isLoading.value = true;
    //   var response = await authRepository.changePassword(
    //     currentPassword: oldPasswordTextEditingController.text,
    //     newPassword: newPasswordTextEditingController.text,
    //     confirmPassword: confirmPasswordTextEditingController.text,
    //   );
    //   if (response) {
    //     AppSnackBar.success("Your password was successful  update");
    //     Get.back(times: 1);
    //   }
    //   isLoading.value = false;
    // } catch (e) {
    //   errorLog("change password", e);
    //   isLoading.value = false;
    // }
  }

  @override
  void onClose() {
    oldPasswordTextEditingController.dispose();
    newPasswordTextEditingController.dispose();
    confirmPasswordTextEditingController.dispose();
    super.onClose();
  }
}
