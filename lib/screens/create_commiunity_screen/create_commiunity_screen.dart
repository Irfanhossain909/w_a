import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/text_edit_field.dart';

class CreateCommiunityscreen extends StatelessWidget {
  const CreateCommiunityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSize.width(value: 16)),
          child: Column(
            spacing: AppSize.width(value: 16),
            children: [
              Stack(
                children: [
                  Container(
                    width: AppSize.width(value: 120),
                    height: AppSize.width(value: 120),

                    decoration: BoxDecoration(
                      color: AppColors.strock,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: AppImage(
                        path: AssetsIconsPath.groupColor,
                        width: AppSize.width(value: 52),
                        height: AppSize.width(value: 52),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: AppImage(
                      path: AssetsIconsPath.addwithColor,
                      width: AppSize.width(value: 24),
                      height: AppSize.width(value: 24),
                    ),
                  ),
                ],
              ),

              TextEditField(
                hintText: "Community Name",
                hintSize: AppSize.width(value: 16),
              ),
              Flexible(
                child: TextEditField(
                  hintText: "Write Description",
                  hintSize: AppSize.width(value: 16),
                  containerHeight: 100,
                  maxLines: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
