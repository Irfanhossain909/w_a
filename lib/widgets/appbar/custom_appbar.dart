import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.trelling,
    this.height = kToolbarHeight, // default AppBar height
  });

  final String title;
  final double height;
  final Widget? trelling;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppText(
        data: title,
        fontSize: AppSize.width(value: 20),
        fontWeight: FontWeight.w600,
        color: AppColors.subTitle,
      ),
      centerTitle: true,
      actions: [
        Padding(padding: EdgeInsets.all(12), child: trelling ?? SizedBox()),
      ],
      leading: IconButton(
        icon: AppImage(
          path: AssetsIconsPath.arrowBack,
          width: AppSize.width(value: 24),
          height: AppSize.width(value: 24),
        ),
        onPressed: () => Get.back(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
