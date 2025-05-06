import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class AppInputWidgetThree extends StatefulWidget {
  const AppInputWidgetThree({
    super.key,
    required this.title,
    this.hintText = "",
    this.prefix,
    this.suffixIcon,
    this.isPassWord = false,
    this.isSecondaryPassWord = false,
    this.isEmail = false,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.keyboardType,
    this.fillColor,
    this.elevation = 0.0,
    this.elevationColor,
    this.minLines = 1,
    this.maxLines,
    this.readOnly = false,
    this.border,
    this.errBorder,
    this.titleColor,
    this.onTap,
    this.style,
    this.secondController,
  });
  final String title;
  final String hintText;
  final Widget? prefix;
  final Widget? suffixIcon;
  final bool isPassWord;
  final bool isSecondaryPassWord;
  final bool readOnly;
  final bool isEmail;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final TextEditingController? secondController;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final Color? titleColor;
  final double elevation;
  final Color? elevationColor;
  final int minLines;
  final int? maxLines;
  final InputBorder? border;
  final InputBorder? errBorder;
  final void Function()? onTap;
  final TextStyle? style;

  @override
  State<AppInputWidgetThree> createState() => _AppInputWidgetThreeState();
}

class _AppInputWidgetThreeState extends State<AppInputWidgetThree> {
  bool isShowPassWord = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(height: 15),
        AppText(
          data: widget.title,
          fontWeight: FontWeight.w600,
          color: widget.titleColor ?? AppColors.subTitle,
          fontSize: AppSize.width(value: 16),
        ),
        const Gap(height: 10),
        Material(
          elevation: widget.elevation,
          shadowColor: widget.elevationColor,
          borderOnForeground: false,
          borderRadius: BorderRadius.circular(AppSize.width(value: 10.0)),
          color: Colors.transparent,
          child: TextFormField(
            onTap: widget.onTap,
            readOnly: widget.readOnly,
            controller: widget.controller,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "This field is required";
              }
              if (widget.isPassWord && value.length < 8) {
                return "Must be at last 8 characters.";
              }
              if (widget.isEmail) {
                if (value.toString().isEmail) return null;
                return "Please provide valid email address";
              }
              if (widget.secondController != null &&
                  widget.isSecondaryPassWord) {
                if (value.toLowerCase() !=
                    widget.secondController!.text.toLowerCase()) {
                  return "Both passwords most match";
                }
                if (value.toLowerCase() ==
                    widget.secondController!.text.toLowerCase()) {
                  return null;
                }
              }

              return null;
            },
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            obscureText: widget.isPassWord && isShowPassWord,
            obscuringCharacter: "*",
            textAlignVertical: TextAlignVertical.center,
            style: widget.style,
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  widget.fillColor ?? AppColors.primary.withValues(alpha: .3),
              prefixIcon: widget.prefix,
              suffixIcon:
                  widget.isPassWord
                      ? Container(
                        margin: const EdgeInsets.all(5),
                        width: AppSize.width(value: 10),
                        height: AppSize.width(value: 10),
                        child: IconButton(
                          color: AppColors.black300,
                          padding: EdgeInsets.zero,
                          highlightColor: AppColors.white500,
                          onPressed: () {
                            setState(() {
                              isShowPassWord = !isShowPassWord;
                            });
                          },
                          icon:
                              isShowPassWord
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                        ),
                      )
                      : widget.suffixIcon,
              hintText: widget.hintText,
              hintStyle: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(color: AppColors.black300),
              border: widget.border ?? InputBorder.none,
              enabledBorder: widget.border ?? InputBorder.none,
              focusedBorder: widget.border ?? InputBorder.none,
              errorBorder: widget.errBorder ?? InputBorder.none,
              focusedErrorBorder: widget.errBorder ?? InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
