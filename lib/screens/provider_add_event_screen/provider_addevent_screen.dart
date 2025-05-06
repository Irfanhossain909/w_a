import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/button/app_button.dart';
import 'package:w_a/widgets/texts/add_descreption_textfield.dart';
import 'package:w_a/widgets/texts/app_input_widget_three.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProviderAddEventScreen extends StatelessWidget {
  const ProviderAddEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppText(
          data: 'Add Service',
          fontSize: AppSize.width(value: 18),
          fontWeight: FontWeight.w500,
          color: AppColors.subTitle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.width(value: 16)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppText(
                    data: "Upload Image",
                    fontSize: AppSize.width(value: 16),
                    fontWeight: FontWeight.w600,
                    color: AppColors.subTitle,
                  ),
                  Gap(width: AppSize.width(value: 6)),
                  AppText(
                    data: "(Max 5)",
                    fontSize: AppSize.width(value: 10),
                    fontWeight: FontWeight.w600,
                    color: AppColors.subTitle,
                  ),
                ],
              ),

              Gap(height: AppSize.width(value: 10)),
              Container(
                height: AppSize.width(value: 120),
                decoration: BoxDecoration(
                  color: AppColors.boxBg,
                  borderRadius: BorderRadius.circular(AppSize.width(value: 8)),
                ),
                child: Center(
                  child: AppImage(
                    path: AssetsImagesPath.imgPlaceholder,
                    width: AppSize.width(value: 32),
                    height: AppSize.width(value: 32),
                  ),
                ),
              ),
              AppInputWidgetThree(
                title: "Title",
                minLines: 1,
                maxLines: 1,
                hintText: "Enter Title",
                fillColor: AppColors.boxBg,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                errBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  ),
                  borderSide: const BorderSide(color: AppColors.warning),
                ),
              ),
              AppDescriptionTextField(
                title: 'Description',
                hintText: "Enter Description",
                fillColor: AppColors.boxBg,
              ),
              AppInputWidgetThree(
                title: "Location",
                minLines: 1,
                maxLines: 1,
                hintText: "Pick Your Location",
                fillColor: AppColors.boxBg,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                errBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  ),
                  borderSide: const BorderSide(color: AppColors.warning),
                ),
              ),
              AppInputWidgetThree(
                title: "Capacity",
                minLines: 1,
                maxLines: 1,
                hintText: "Enter Capacity",
                fillColor: AppColors.boxBg,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                errBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  ),
                  borderSide: const BorderSide(color: AppColors.warning),
                ),
              ),
              AppInputWidgetThree(
                title: "Contact Number",
                minLines: 1,
                maxLines: 1,
                hintText: "Enter Contact Number",
                fillColor: AppColors.boxBg,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                errBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  ),
                  borderSide: const BorderSide(color: AppColors.warning),
                ),
              ),
              Gap(height: AppSize.width(value: 30)),
              AppButton(title: "Save",onTap: () {
                Get.toNamed(AppRoutes.providerEventInfoScreen);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
