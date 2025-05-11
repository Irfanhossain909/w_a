import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/utils/gap.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class FilterBottomSheet extends StatelessWidget {
  final List? items;

  const FilterBottomSheet({super.key, this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.boxBg,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                data: "Filter By",
                fontSize: AppSize.width(value: 20),
                fontWeight: FontWeight.w600,
                color: AppColors.text,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.close, size: 20, color: AppColors.subTitle),
              ),
            ],
          ),
          const SizedBox(height: 16),

          SizedBox(
            height: AppSize.width(value: 40),
            width: AppSize.width(value: double.infinity),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items!.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    height: AppSize.width(value: 37),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.boxBg,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: AppColors.strock, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return AppColors.customGradient.createShader(bounds);
                      },
                      child: AppText(
                        data: items![index],
                        fontSize: AppSize.width(value: 14),
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Gap(height: AppSize.width(value: 16)),
          DropdownButtonFormField<String>(
            dropdownColor: AppColors.cardBg,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              filled: true,
              fillColor: AppColors.cardBg,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none, // Removed border color
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none,
              ),
            ),
            icon: AppImage(path: AssetsIconsPath.arrowDown),
            hint: AppText(
              data: "Filter by City",
              fontSize: AppSize.width(value: 16),
              fontWeight: FontWeight.w400,
              color: AppColors.subTitle,
            ),
            items:
                ["City A", "City B"]
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
            onChanged: (value) {},
          ),

          Gap(height: AppSize.width(value: 16)),
          AppText(
            data: "Available for Today",
            fontSize: AppSize.width(value: 14),
            fontWeight: FontWeight.w400,
            color: AppColors.subTitle,
          ),
          Gap(height: AppSize.width(value: 8)),
          Row(
            children: [
              _timeButton("Before 2 pm", selected: true),
              _timeButton("After 2 pm"),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: AppSize.width(value: 16),
              bottom: AppSize.width(value: 100),
            ),
            child: Divider(height: 1, color: AppColors.subTitle),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: AppText(
                  data: "Clear Filters",
                  fontSize: AppSize.width(value: 14),
                  fontWeight: FontWeight.w400,
                  color: AppColors.error,
                ),
              ),
              _timeButton("show results", selected: false),
            ],
          ),
          Gap(height: AppSize.width(value: 30)),
        ],
      ),
    );
  }

  Widget _timeButton(String label, {bool selected = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: selected ? AppColors.boxBg : AppColors.appBg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side:
                selected
                    ? const BorderSide(color: AppColors.subTitle, width: 0.5)
                    : BorderSide.none,
          ),
        ),
        onPressed: () {},
        child: AppText(
          data: label,
          fontSize: AppSize.width(value: 14),
          fontWeight: FontWeight.w400,
          color: AppColors.subTitle,
        ),
      ),
    );
  }
}
