import 'package:flutter/material.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/const/assets_images_path.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 40,
            backgroundColor: AppColors.appBg,
            floating: true,
            pinned: true,
            snap: false,
            flexibleSpace: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(value: 16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppSize.width(value: 37),
                      height: AppSize.width(value: 24),
                      child: AppImage(path: AssetsImagesPath.appLogo),
                    ),
                    Row(
                      children: [
                        AppImage(
                          path: AssetsIconsPath.bookmark,
                          width: AppSize.width(value: 26),
                          height: AppSize.width(value: 26),
                        ),
                        SizedBox(width: AppSize.width(value: 12)),
                        AppImage(
                          path: AssetsIconsPath.notification,
                          width: AppSize.width(value: 26),
                          height: AppSize.width(value: 26),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: CustomSearchBar(hintText: "Search in Health & Wellness")),

          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 20),
              const Center(child: Text("Welcome to Customer Home")),
              // Add more widgets here
            ]),
          ),
        ],
      ),
    );
  }
}


class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final VoidCallback? onFilterPressed; // Optional callback for the filter button

  const CustomSearchBar({
    super.key,
    required this.hintText,
    this.controller,
    this.onFilterPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Define colors (you can easily change these later or use Theme colors)
    const Color backgroundColor = Color(0xFF303134); // Dark grey background like the image
    const Color iconAndHintColor = Color(0xFF9AA0A6); // Light grey for icons and hint
    const Color textColor = Colors.white; // Color for the actual typed text
    const double borderRadius = 30.0; // Adjust for desired roundness

    return Container(
      // Padding for the container itself can adjust outer spacing if needed
      // padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: textColor, fontSize: 16), // Style for user input
        cursorColor: iconAndHintColor, // Color of the cursor
        decoration: InputDecoration(
          // --- Content Padding ---
          // Adjusts padding *inside* the text field boundaries
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15.0, // Adjust vertical padding for height
            horizontal: 0, // Horizontal padding is handled by icons
          ),

          // --- Hint Text ---
          hintText: hintText,
          hintStyle: const TextStyle(color: iconAndHintColor, fontSize: 16),

          // --- Icons ---
          prefixIcon: const Icon(
            Icons.search,
            color: iconAndHintColor,
          ),
          // Use InkWell for tappable suffix icon if needed
          suffixIcon: onFilterPressed != null
              ? IconButton(
                  icon: const Icon(
                    Icons.tune, // Filter/settings icon
                    color: iconAndHintColor,
                  ),
                  onPressed: onFilterPressed,
                  tooltip: 'Filter', // Optional tooltip
                )
              : const Padding( // If no callback, just display the icon
                  padding: EdgeInsets.only(right: 12.0), // Add padding so it's not flush right
                  child: Icon(
                    Icons.tune, // Filter/settings icon
                    color: iconAndHintColor,
                   ),
                ),


          // --- Borders ---
          // Remove all borders by setting them to InputBorder.none
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}