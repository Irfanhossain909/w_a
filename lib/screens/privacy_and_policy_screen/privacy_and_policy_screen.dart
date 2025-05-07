import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/screens/privacy_and_policy_screen/controllers/privacy_and_policy_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class PrivacyAndPolicyScreen extends StatelessWidget {
  const PrivacyAndPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PrivacyAndPolicyScreenController(),
      builder: (controller) {
        return Scaffold(
          appBar: CustomAppBar(title: "Privicy & Policy"),
          body: Padding(
            padding: EdgeInsets.all(AppSize.width(value: 10.0)),
            child: AppText(data: "Privicy policy", fontSize: 50),
          ),
        );
      },
    );
  }
}
