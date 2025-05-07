
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/utils/app_all_log/app_log.dart';
import 'package:w_a/utils/app_all_log/error_log.dart';

class ResetPasswordScreenController extends GetxController {
  // final AuthRepository authRepository = AuthRepository();
  RxBool isLoading = false.obs;
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController reEntryPasswordTextEditingController =
      TextEditingController();
  GlobalKey<FormState> resetPasswordKey = GlobalKey<FormState>();
  RxString authKey = ''.obs;

  Future<void> resetPassword() async {
    // try {
    //   isLoading.value = true;
    //   var repoResponse = await authRepository.resetPassword(newPassword: passwordTextEditingController.text, confirmPassword: reEntryPasswordTextEditingController.text, token: authKey.value);
    //   if (repoResponse) {
    //     AppSnackBar.success("Password reset successful");
    //     // Get.back(times: 2);
    //   } else {
    //     AppSnackBar.error("Password reset un-successful");
    //   }
    //   isLoading.value = false;
    // } catch (e) {
    //   errorLog("reset password", e);
    //   isLoading.value = false;
    // }
    
  }

  clickResetButton() {

    try {
      appLog('Reset PAssword Button Tpped');
    } catch (e) {
      appLog("error form click reset button function: $e");
    }
  }

  setInitialData() {
    try {
      final argData = Get.arguments;
      if (argData.runtimeType != Null) {
        authKey.value = argData.toString();
      }
    } catch (e) {
      errorLog("set initial data function", e);
    }
  }

  @override
  void onInit() {
    setInitialData();
    super.onInit();
  }

  @override
  void onClose() {
    passwordTextEditingController.dispose();
    reEntryPasswordTextEditingController.dispose();
    super.onClose();
  }
}
