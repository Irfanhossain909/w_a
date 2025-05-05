
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:w_a/const/app_colors.dart';
// import 'package:w_a/utils/app_size.dart';
// import 'package:w_a/widgets/texts/app_text.dart';

// class AppButton extends StatelessWidget {
//   const AppButton({
//     super.key,
//     this.onTap,
//     required this.title,
//     this.isLoading = false,
//     this.margin,
//     this.circularHeight,
//     this.height,
//     this.width,
//     this.borderRadius,
//     this.decoration,
//     this.titleColor,
//   });
//   final void Function()? onTap;
//   final double? height;
//   final double? circularHeight;
//   final double? width;
//   final String title;
//   final bool isLoading;
//   final EdgeInsetsGeometry? margin;
//   final BorderRadiusGeometry? borderRadius;
//   final BoxDecoration? decoration;
//   final Color? titleColor;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: isLoading ? null : onTap,
//       child: Container(
//         width: width ?? Get.width,
//         height: height ?? AppSize.width(value: 50.0),
//         alignment: Alignment.center,
//         decoration:
//             decoration ??
//             BoxDecoration(
//               color: AppColors.yellow,
//               borderRadius:
//                   borderRadius ??
//                   BorderRadius.circular(AppSize.width(value: 10)),
//             ),
//         child:
//             isLoading
//                 ? SizedBox(
//                   height: circularHeight ?? AppSize.width(value: 30.0),
//                   width: width ?? AppSize.width(value: 30.0),
//                   child: const CircularProgressIndicator(
//                     color: AppColors.white50,
//                   ),
//                 )
//                 : AppText(
//                   data: title,
//                   color: titleColor ?? AppColors.white50,
//                   fontWeight: FontWeight.w600,
//                   fontSize: 18,
//                 ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onTap,
    required this.title,
    this.isLoading = false,
    this.margin,
    this.circularHeight,
    this.height,
    this.width,
    this.borderRadius,
    this.decoration,
    this.titleColor,
    this.gradient,
  });

  final void Function()? onTap;
  final double? height;
  final double? circularHeight;
  final double? width;
  final String title;
  final bool isLoading;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final BoxDecoration? decoration;
  final Color? titleColor;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: width ?? Get.width,
        height: height ?? AppSize.width(value: 50.0),
        alignment: Alignment.center,
        margin: margin,
        decoration: decoration ??
            BoxDecoration(
              gradient: gradient ??
                  LinearGradient(
                    colors: [AppColors.yellow, AppColors.yellow.withOpacity(0.8)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
              borderRadius: borderRadius ?? BorderRadius.circular(AppSize.width(value: 10)),
            ),
        child: isLoading
            ? SizedBox(
                height: circularHeight ?? AppSize.width(value: 30.0),
                width: circularHeight ?? AppSize.width(value: 30.0),
                child: const CircularProgressIndicator(
                  color: AppColors.white50,
                  strokeWidth: 2,
                ),
              )
            : AppText(
                data: title,
                color: titleColor ?? AppColors.white50,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
      ),
    );
  }
}
