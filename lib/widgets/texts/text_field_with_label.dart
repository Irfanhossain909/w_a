// import 'package:book_rite/const/app_colors.dart';
// import 'package:book_rite/widgets/app_image/app_image.dart';
// import 'package:flutter/material.dart';

// class TextFieldWithLabel extends StatelessWidget {
//   final TextEditingController? controller;
//   final String? trailingIcon;
//   final String? labelText;
//   final String? hintText;
//   final double? imgWidth;
//   final double? imgHeight;

//   const TextFieldWithLabel({
//     super.key,
//     this.controller,
//     this.trailingIcon,
//     this.labelText,
//     this.hintText,
//     this.imgWidth,
//     this.imgHeight,
//     // Optional trailing icon parameter
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(4.0),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12.0),
//         child: TextField(
//           controller: controller, // Use the provided controller
//           decoration: InputDecoration(
//             labelText: labelText ?? 'Label Text',
//             labelStyle: TextStyle(color: AppColors.white502),
//             border: InputBorder.none,
//             hintText: hintText ?? 'HintText',
//             suffixIcon: trailingIcon != null
//                 ? AppImage(
//                     path: trailingIcon,
//                     width: imgWidth ?? 32,
//                     height: imgHeight ?? 32,
//                   )
//                 : null, // Only show icon if trailingIcon is not null
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class TextFieldWithLabel extends StatelessWidget {
//   final TextEditingController? controller;
//   final String? trailingIcon;
//   final String? labelText;
//   final String? hintText;
//   final double? imgWidth;
//   final double? imgHeight;
//   final double? width; // New width parameter with optional value

//   const TextFieldWithLabel({
//     super.key,
//     this.controller,
//     this.trailingIcon,
//     this.labelText,
//     this.hintText,
//     this.imgWidth,
//     this.imgHeight,
//     this.width, // Accept the width parameter
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width ?? double.infinity, // Default to double.infinity if no width is provided
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(4.0),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12.0),
//         child: TextField(
//           controller: controller, // Use the provided controller
//           decoration: InputDecoration(
//             labelText: labelText ?? 'Label Text',
//             // labelStyle: TextStyle(color: AppColors.white502),
//             border: InputBorder.none,
//             hintText: hintText ?? 'HintText',
//             suffixIcon: trailingIcon != null
//                 ? AppImage(
//                     path: trailingIcon,
//                     width: imgWidth ?? 32,
//                     height: imgHeight ?? 32,
//                   )
//                 : null, // Only show icon if trailingIcon is not null
//           ),
//         ),
//       ),
//     );
//   }
// }
