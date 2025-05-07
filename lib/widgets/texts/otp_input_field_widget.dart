import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';

class OtpInputFieldWidget extends StatelessWidget {
  const OtpInputFieldWidget({
    super.key,
    this.isLast = false,
    this.textInputAction = TextInputAction.next,
    this.fillColor = AppColors.boxBg,
    this.borderColor = AppColors.appBg,
    this.radius = 10.0,
    this.controller,
  });
  final bool isLast;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color borderColor;
  final double radius;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.width(value: 55),
      child: TextFormField(
        style: TextStyle(
          color: AppColors.subTitle,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "";
          }
          return null;
        },
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        textInputAction: textInputAction,
        onChanged: (value) {
          if (value.isNotEmpty && !isLast) {
            FocusManager.instance.primaryFocus?.nextFocus();
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(radius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(radius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(radius),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(radius),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.warning, width: 1.5),
            borderRadius: BorderRadius.circular(radius),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.warning, width: 1.5),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
