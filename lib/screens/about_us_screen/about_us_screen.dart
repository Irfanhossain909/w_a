import 'package:flutter/material.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "About Us"),
      body: AppText(data: "Irfan Hossain"),
    );
  }
}
