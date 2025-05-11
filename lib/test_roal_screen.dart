import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_all_log/app_log.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/button/app_button.dart';

class TestRoalScreen extends StatelessWidget {
  const TestRoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppButton(
            title: "Customer",
            onTap: () {
              Get.toNamed(AppRoutes.customerNavigationScreen);
              appLog('Provider Item Clicked');
            },
          ),
          Gap(height: 20),
          AppButton(
            title: "Provider",
            onTap: () {
              Get.toNamed(AppRoutes.providerNavigationScreen);
              appLog('Provider Item Clicked');
            },
          ),
        ],
      ),
    );
  }
}
