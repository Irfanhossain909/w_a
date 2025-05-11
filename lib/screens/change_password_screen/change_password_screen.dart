import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/screens/change_password_screen/controllers/change_password_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/app_input_widget_three.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ChangePasswordScreenController(),
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(title: "Change Password"),
          body: Padding(
            padding: EdgeInsets.all(AppSize.width(value: 10.0)),
            child: SingleChildScrollView(
              child: Form(
                key: controller.changePasswordKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      AppInputWidgetThree(
                        controller: controller.oldPasswordTextEditingController,
                        title: "Current Password",
                        isPassWord: true,
                        style: TextStyle(color: AppColors.text),
                        minLines: 1,
                        maxLines: 1,
                        hintText: "Current Password",
                        fillColor: AppColors.boxBg,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        errBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 10.0),
                          ),
                          borderSide: const BorderSide(
                            color: AppColors.warning,
                          ),
                        ),
                      ),
                      AppInputWidgetThree(
                        controller: controller.newPasswordTextEditingController,
                        title: "New Password",
                        isPassWord: true,
                        style: TextStyle(color: AppColors.text),
                        minLines: 1,
                        maxLines: 1,
                        hintText: "New Password",
                        fillColor: AppColors.boxBg,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        errBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 10.0),
                          ),
                          borderSide: const BorderSide(
                            color: AppColors.warning,
                          ),
                        ),
                      ),
                      AppInputWidgetThree(
                        controller:
                            controller.confirmPasswordTextEditingController,
                        secondController:
                            controller.newPasswordTextEditingController,
                        isSecondaryPassWord: true,
                        title: "Confirm Password",
                        isPassWord: true,
                        style: TextStyle(color: AppColors.text),
                        minLines: 1,
                        maxLines: 1,
                        hintText: "Confirm Password",
                        fillColor: AppColors.boxBg,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 10.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        errBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 10.0),
                          ),
                          borderSide: const BorderSide(
                            color: AppColors.warning,
                          ),
                        ),
                      ),
                      // Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: AppSize.width(value: 134),
                        ),
                        child: AppButton(
                          title: "Update",
                          titleSize: AppSize.width(value: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
