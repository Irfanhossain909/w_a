import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/button/profile_edit_button.dart';
import 'package:w_a/widgets/service_widget/profile_top_widget.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Personal Information"),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: SingleChildScrollView(
          child: Column(
            spacing: AppSize.width(value: 16),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileTopWidget(
                imgPath: AssetsImagesPath.person,
                name: "Liam Johnson",
                email: "liam@gmail.com",
                editSection: ProfileEditButton(
                  text: "Edit Profile",
                  onTap: () {
                    Get.toNamed(AppRoutes.profileEditScreen);
                  },
                ),
              ),

              ProfileTitleSubtitle(title: "Name", subTitle: "Lima Johnson"),
              ProfileTitleSubtitle(title: "Email", subTitle: "liam@gmail.com"),
              ProfileTitleSubtitle(
                title: "Phone Number",
                subTitle: "0845721953",
              ),
              ProfileTitleSubtitle(
                title: "Date Of Birth",
                subTitle: "17 dec, 2024",
              ),
              ProfileTitleSubtitle(title: "Gender", subTitle: "Male"),
              ProfileTitleSubtitle(
                title: "Occupation",
                subTitle: "Secondary School Teacher",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTitleSubtitle extends StatelessWidget {
  final String title;
  final String subTitle;
  const ProfileTitleSubtitle({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          data: title,
          fontSize: AppSize.width(value: 16),
          fontWeight: FontWeight.w600,
          color: AppColors.text,
        ),
        Gap(height: AppSize.width(value: 8)),
        AppText(
          data: subTitle,
          fontSize: AppSize.width(value: 16),
          fontWeight: FontWeight.w400,
          color: AppColors.subTitle,
        ),
      ],
    );
  }
}
