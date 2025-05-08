
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/screens/faq_screen/controller/faq_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "FAQ"),
      body: GetBuilder(
        init: FaqController(),
        builder: (controller) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: List.generate(3, (index) {
              return ExpandableTile(
                title: "What’s the app's main purpose?",
                description:
                    "This app is designed to help users manage their book reading habits, track progress, and discover new books tailored to their preferences.",
                controller: controller,
                index: index,
              );
            }),
          );
        },
      ),
    );
  }
}

class ExpandableTile extends StatelessWidget {
  final String title;
  final String description;
  final FaqController controller;
  final int index;

  const ExpandableTile({
    super.key,
    required this.title,
    required this.description,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final bool isExpanded = controller.expandedIndex.value == index;

    return GestureDetector(
      onTap: () => controller.toggleExpanded(index),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      data: title,
                      fontSize: AppSize.width(value: 13.5),
                      fontWeight: FontWeight.w500,
                      color: AppColors.black400,
                    ),
                  ),
                  AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0.0,
                    duration: const Duration(milliseconds: 300),
                    child: const Icon(Icons.keyboard_arrow_down),
                  ),
                ],
              ),
              if (isExpanded)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
