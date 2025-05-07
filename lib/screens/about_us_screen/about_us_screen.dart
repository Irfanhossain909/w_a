import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/screens/about_us_screen/controllers/about_us_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AboutUsScreenController(),
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(title: "About Us"),
          body: Obx(() {
            if (controller.isLoading.value) {
              return Center(
                child: SizedBox(
                  width: AppSize.width(value: 50),
                  height: AppSize.width(value: 50),
                  child: const CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                ),
              );
            }
            return Padding(
              padding: EdgeInsets.all(AppSize.width(value: 10.0)),
              child: AppText(data: "About", fontSize: 50),
            );
          }),
        );
      },
    );
  }
}
