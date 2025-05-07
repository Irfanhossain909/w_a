import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image_circular.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProfileTopWidget extends StatelessWidget {
  final String imgPath;
  final String name;
  final String email;
  final Widget? editSection;

  const ProfileTopWidget({
    super.key,
    required this.imgPath,
    required this.name,
    required this.email,
    this.editSection,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppImageCircular(
          path: imgPath,
          width: AppSize.width(value: 100),
          height: AppSize.width(value: 100),
          color: AppColors.black300,
        ),
        Gap(width: AppSize.width(value: 12)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              data: name,
              fontSize: AppSize.width(value: 24),
              fontWeight: FontWeight.w500,
              color: AppColors.text,
            ),
            Gap(height: AppSize.width(value: 4)),
            AppText(
              data: email,
              fontSize: AppSize.width(value: 12),
              fontWeight: FontWeight.w400,
              color: AppColors.subTitle,
            ),
            Gap(height: AppSize.width(value: 6)),
            if (editSection != null) editSection!,
          ],
        ),
      ],
    );
  }
}
