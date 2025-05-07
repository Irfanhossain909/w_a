import 'package:flutter/material.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/app_image/app_image_circular.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/text_edit_field.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Edit Profile"),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: SingleChildScrollView(
          child: Column(
            spacing: AppSize.width(value: 16),
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  AppImageCircular(
                    path: AssetsImagesPath.person,
                    width: AppSize.width(value: 100),
                    height: AppSize.width(value: 100),
                  ),

                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: GestureDetector(
                      onTap: () {
                        //For Editting Image
                      },
                      child: AppImage(
                        path: AssetsIconsPath.editImg,
                        width: AppSize.width(value: 20),
                        height: AppSize.width(value: 20),
                      ),
                    ),
                  ),
                ],
              ),

              TextEditField(
                hintText: "Liam Johnson",
                hintSize: AppSize.width(value: 16),
              ),
              TextEditField(
                hintText: "liam@gmail.com",
                hintSize: AppSize.width(value: 16),
              ),
              TextEditField(
                hintText: "084 572 1953",
                hintSize: AppSize.width(value: 16),
              ),
              TextEditField(
                hintText: "17 dec, 2024",
                hintSize: AppSize.width(value: 16),
              ),
              TextEditField(
                hintText: "Male",
                hintSize: AppSize.width(value: 16),
              ),
              TextEditField(
                hintText: "2972 Westheimer Rd. Santa Ana,85486 ",
                hintSize: AppSize.width(value: 16),
              ),
              Gap(height: AppSize.width(value: 50)),
              AppButton(
                title: "Save",
                titleSize: AppSize.width(value: 20),
                borderRadius: BorderRadius.circular(12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
