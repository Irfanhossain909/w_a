import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerHomeCategoryScreen extends StatelessWidget {
  const CustomerHomeCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          data: index.toString(),
          fontSize: 20,
          color: AppColors.white100,
        ),
      ),
    );
  }
}
