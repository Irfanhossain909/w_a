

import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProfileEditButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const ProfileEditButton({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppSize.width(value: 100),
        height: AppSize.width(value: 32),
        decoration: BoxDecoration(
          color: AppColors.white400,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(
              path: AssetsIconsPath.bookmark,
              width: AppSize.width(value: 12),
              height: AppSize.width(value: 12),
            ),
            Gap(width: AppSize.width(value: 5)),
            AppText(
              data: text,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.black300,
            ),
          ],
        ),
      ),
    );
  }
}
