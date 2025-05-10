import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';

class TextEditField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final InputDecoration? decoration;
  final Color? hintColor;
  final double? hintSize;
  final double? containerHeight;
  final int? maxLines;

  const TextEditField({
    super.key,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.decoration,
    this.hintColor,
    this.hintSize, this.containerHeight, this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(value: double.infinity),
      height: AppSize.width(value:containerHeight ?? 52),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.boxBg,
      ),
      child: TextFormField(
        maxLines: maxLines,
        controller: controller,
        style: TextStyle(color: AppColors.text),
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration:
            decoration ??
            InputDecoration(
            
              hintText: hintText,
              hintStyle: TextStyle(
                color:
                    hintColor ??
                    AppColors.subTitle, // যদি না দাও তাহলে default grey
                fontSize: hintSize ?? 14, // যদি না দাও তাহলে default 14
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
            ),
      ),
    );
  }
}
