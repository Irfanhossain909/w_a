import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/button/app_button.dart';

class CustomerCheckAvilabilityScreen extends StatelessWidget {
  const CustomerCheckAvilabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Check Availability"),
      bottomNavigationBar: AppButton(
        title: "Confirm",
        titleColor: AppColors.black500,
        gradient: AppColors.customGradient,
        borderRadius: BorderRadius.circular(AppSize.width(value: 12)),
        onTap: () {
          Get.toNamed(AppRoutes.customerBookingConfirmScreen);
          
        },
      ),
    );
  }
}
