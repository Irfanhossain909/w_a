// import 'package:book_rite/const/assets_icons_path.dart';
// import 'package:book_rite/widgets/app_image/app_image.dart';
// import 'package:book_rite/widgets/texts/app_text.dart';
// import 'package:flutter/material.dart';
// import 'package:book_rite/const/app_colors.dart';
// import 'package:book_rite/const/app_const.dart';
// import 'package:book_rite/utils/app_size.dart';

// class ExpandableRadioContainer extends StatefulWidget {
//   @override
//   _ExpandableRadioContainerState createState() =>
//       _ExpandableRadioContainerState();
// }

// class _ExpandableRadioContainerState extends State<ExpandableRadioContainer>
//     with TickerProviderStateMixin {
//   bool isExpanded = false;
//   String? selectedOption;
//   late AnimationController _rotationController;

//   @override
//   void initState() {
//     super.initState();
//     _rotationController = AnimationController(
//       duration: Duration(milliseconds: 400),
//       vsync: this,
//       upperBound: 0.5, // 180 degree
//     );
//   }

//   @override
//   void dispose() {
//     _rotationController.dispose();
//     super.dispose();
//   }

//   void toggleContainer() {
//     setState(() {
//       isExpanded = !isExpanded;
//       if (isExpanded) {
//         _rotationController.forward();
//       } else {
//         _rotationController.reverse();
//       }
//     });
//   }

//   void selectOption(String option) {
//     setState(() {
//       selectedOption = option;
//       isExpanded = false;
//       _rotationController.reverse();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: toggleContainer,
//       child: Material(
//         elevation:
//             0.0, // AppInputWidgetTwo e elevation parameter chilo, ekhane 0
//         shadowColor: AppColors.primary200,
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(AppSize.width(value: 8.0)),
//         child: Container(
//           width: double.infinity,
//           padding: EdgeInsets.all(AppSize.width(value: 10.0)),
//           decoration: BoxDecoration(
//             color: AppColors.white50.withOpacity(0.3), // background color match
//             borderRadius: BorderRadius.circular(AppSize.width(value: 8.0)),
//             border: Border.all(
//               color: AppColors.primary200, // border color match
//             ),
//           ),
//           child: AnimatedSize(
//             duration: Duration(milliseconds: 500),
//             curve: Curves.easeInOutCubic,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         AppImage(
//                           path: AssetsIconsPath.userPro,
//                           width: 24,
//                           height: 24,
//                         ),
//                         AppText(data: selectedOption ?? "Select Option"),
//                       ],
//                     ),
//                     RotationTransition(
//                       turns: _rotationController,
//                       child: Icon(
//                         Icons.keyboard_arrow_down,
//                         size: 28,
//                         color: AppColors.primary, // optional: icon color match
//                       ),
//                     ),
//                   ],
//                 ),
//                 AnimatedSwitcher(
//                   duration: Duration(milliseconds: 400),
//                   switchInCurve: Curves.easeInOutCubic,
//                   switchOutCurve: Curves.easeInOutCubic,
//                   transitionBuilder: (child, animation) {
//                     return FadeTransition(
//                       opacity: animation,
//                       child: SizeTransition(
//                         sizeFactor: animation,
//                         axisAlignment: -1.0,
//                         child: child,
//                       ),
//                     );
//                   },
//                   child:
//                       isExpanded
//                           ? Column(
//                             key: ValueKey('ExpandedState'),
//                             children: [
//                               SizedBox(height: 16),
//                               Divider(),
//                               ListTile(
//                                 title: Text('Customer'),
//                                 trailing: Radio<String>(
//                                   value: 'Customer',
//                                   groupValue: selectedOption,
//                                   onChanged: (value) {
//                                     selectOption(value!);
//                                   },
//                                 ),
//                                 onTap: () => selectOption('Customer'),
//                               ),
//                               ListTile(
//                                 title: Text('Provider'),
//                                 trailing: Radio<String>(
//                                   value: 'Provider',
//                                   groupValue: selectedOption,
//                                   onChanged: (value) {
//                                     selectOption(value!);
//                                   },
//                                 ),
//                                 onTap: () => selectOption('Provider'),
//                               ),
//                             ],
//                           )
//                           : SizedBox(key: ValueKey('CollapsedState')),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ExpandableRadioContainer extends StatefulWidget {
  const ExpandableRadioContainer({
    super.key,
    this.hintText,
    this.prefix,
    this.suffixIcon,
    this.borderRadius,
    this.elevation = 0.0,
    this.elevationColor,
    this.fillColor,
    this.border,
    this.contentPadding,
  });

  final String? hintText;
  final Widget? prefix;
  final Widget? suffixIcon;
  final double? borderRadius;
  final double elevation;
  final Color? elevationColor;
  final Color? fillColor;
  final BoxBorder? border;
  final EdgeInsetsGeometry? contentPadding;

  @override
  State<ExpandableRadioContainer> createState() =>
      _ExpandableRadioContainerState();
}

class _ExpandableRadioContainerState extends State<ExpandableRadioContainer>
    with TickerProviderStateMixin {
  bool isExpanded = false;
  String? selectedOption;
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
      upperBound: 0.5,
    );
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  void toggleContainer() {
    setState(() {
      isExpanded = !isExpanded;
      if (isExpanded) {
        _rotationController.forward();
      } else {
        _rotationController.reverse();
      }
    });
  }

  void selectOption(String option) {
    setState(() {
      selectedOption = option;
      isExpanded = false;
      _rotationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleContainer,
      child: Material(
        elevation: widget.elevation,
        // shadowColor: widget.elevationColor ?? AppColors.primary200,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          AppSize.width(value: widget.borderRadius ?? 8.0),
        ),
        child: Container(
          width: double.infinity,
          padding:
              widget.contentPadding ??
              EdgeInsets.all(AppSize.width(value: 10.0)),
          decoration: BoxDecoration(
            color: widget.fillColor ?? AppColors.white50.withValues(alpha: .3),
            borderRadius: BorderRadius.circular(
              AppSize.width(value: widget.borderRadius ?? 8.0),
            ),
            // border: widget.border ?? Border.all(color: AppColors.primary200),
          ),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutCubic,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        widget.prefix ??
                            // AppImage(
                            //   path: AssetsIconsPath.userPro,
                            //   width: 24,
                            //   height: 24,
                            // ),
                        const SizedBox(width: 8),
                        AppText(
                          data:
                              selectedOption ??
                              widget.hintText ??
                              "Select Option",
                          fontWeight: FontWeight.w500,
                          color: AppColors.black200,
                        ),
                      ],
                    ),
                    widget.suffixIcon ??
                        RotationTransition(
                          turns: _rotationController,
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 28,
                            color: AppColors.black200,
                          ),
                        ),
                  ],
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  switchInCurve: Curves.easeInOutCubic,
                  switchOutCurve: Curves.easeInOutCubic,
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: SizeTransition(
                        sizeFactor: animation,
                        axisAlignment: -1.0,
                        child: child,
                      ),
                    );
                  },
                  child:
                      isExpanded
                          ? Column(
                            key: const ValueKey('ExpandedState'),
                            children: [
                              const SizedBox(height: 16),

                              ListTile(
                                title: AppText(
                                  data: 'Customer',
                                  color: AppColors.black200,
                                  fontWeight: FontWeight.w500,
                                ),
                                trailing: Radio<String>(
                                  value: 'Customer',
                                  groupValue: selectedOption,
                                  activeColor: AppColors.black200,
                                  onChanged: (value) {
                                    selectOption(value!);
                                  },
                                ),
                                onTap: () => selectOption('Customer'),
                              ),
                              ListTile(
                                title: AppText(
                                  data: 'Provider',
                                  color: AppColors.black200,
                                  fontWeight: FontWeight.w500,
                                ),
                                trailing: Radio<String>(
                                  value: 'Provider',
                                  activeColor: AppColors.black200,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    selectOption(value!);
                                  },
                                ),
                                onTap: () => selectOption('Provider'),
                              ),
                            ],
                          )
                          : const SizedBox(key: ValueKey('CollapsedState')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
