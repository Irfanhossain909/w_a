import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class AppDescriptionTextField extends StatelessWidget {
  const AppDescriptionTextField({
    super.key,
    this.controller,
    this.hintText = '',
    this.fillColor,
    this.border,
    this.errBorder,
    required this.title,
  });

  final String title;
  final TextEditingController? controller;
  final String hintText;
  final Color? fillColor;
  final InputBorder? border;
  final InputBorder? errBorder;

  @override
  Widget build(BuildContext context) {
    final outlineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none, // No border color
    );

    final errorOutlineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // No border color
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(height: 15),
        AppText(
          data: title,
          fontWeight: FontWeight.w600,
          color: AppColors.subTitle,
          fontSize: AppSize.width(value: 16),
        ),
        const Gap(height: 10),
        SizedBox(
          height: 120,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            expands: true,
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: fillColor ?? AppColors.white400,
              border: border ?? outlineBorder,
              enabledBorder: border ?? outlineBorder,
              focusedBorder: border ?? outlineBorder,
              errorBorder: errBorder ?? errorOutlineBorder,
              focusedErrorBorder: errBorder ?? errorOutlineBorder,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
