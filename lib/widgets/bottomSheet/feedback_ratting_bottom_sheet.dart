import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/screens/customer_booking_screen/controller/customer_booking_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_snack_bar/app_snack_bar.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/add_descreption_textfield.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class FeedBackRattinigBottomSheet extends StatelessWidget {
  const FeedBackRattinigBottomSheet({super.key, required this.controller});

  final CustomerBookingScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: AppSize.width(value: double.infinity),
      decoration: BoxDecoration(
        color: AppColors.bottmSheet,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Align(
              alignment: Alignment(1, 1),
              child: Icon(
                Icons.close,
                size: AppSize.width(value: 20),
                color: AppColors.subTitle,
              ),
            ),
          ),
          AppText(
            data: "Give Your Rating",
            fontSize: AppSize.width(value: 24),
            color: AppColors.subTitle,
          ),
          const SizedBox(height: 16),
          Obx(
            () => RatingBar.builder(
              initialRating: controller.rating.value,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 40,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder:
                  (context, _) => const Icon(Icons.star, color: Colors.amber),
              onRatingUpdate: controller.updateRatting,
            ),
          ),

          const SizedBox(height: 16),
          AppDescriptionTextField(
            fillColor: AppColors.boxBg,
            title: "Comments",
            hintText: "Write your comment",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                8.0,
              ), // You can change the radius
              borderSide: const BorderSide(
                color: AppColors.subTitle, // You can change the border color
                width: 1.0, // 1px border
              ),
            ),
          ),

          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(vertical: AppSize.width(value: 40)),
            child: AppButton(
              title: "Submit",
              onTap: () {
                Get.back(); // Close bottom sheet
                AppSnackBar.message("You rated: ${controller.rating.value}");
              },
            ),
          ),
        ],
      ),
    );
  }
}
