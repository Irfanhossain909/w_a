import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/screens/customer_home_screen/customer_home_screen.dart';
import 'package:w_a/screens/customer_navigation_screen/controllers/customer_navigation_screen_controller.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerNavigationScreen extends StatelessWidget {
  const CustomerNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CustomerNavigationScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Obx(
            () => IndexedStack(
              index: controller.selectedIndex.value,
              children: [
                // ////////// index 0
                CustomerHomeScreen(),
                // ProviderHomeScreen(),
                // // ////////// index 1
                // ProviderServiceMainScreen(),
                // // /////////// index 2
                // ChatScreen(),
                // // /////////// index 3
                // ProviderAccountScreen(providerNavigationControllerr: controller,

                // )
              ],
            ),
          ),
          bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF121212), // Dark background
              borderRadius: BorderRadius.circular(32),
            ),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: navItem(
                      iconPath: AssetsIconsPath.icHomeNav,
                      label: "Home",
                      isSelected: controller.selectedIndex.value == 0,
                      onTap: () => controller.changeIndex(0),
                    ),
                  ),
                  Expanded(
                    child: navItem(
                      iconPath: AssetsIconsPath.icbookingNav,
                      label: "Booking",
                      isSelected: controller.selectedIndex.value == 1,
                      onTap: () => controller.changeIndex(1),
                    ),
                  ),
                  Expanded(
                    child: navItem(
                      iconPath: AssetsIconsPath.icNetworkNav,
                      label: "Network",
                      isSelected: controller.selectedIndex.value == 2,
                      onTap: () => controller.changeIndex(2),
                    ),
                  ),
                  Expanded(
                    child: navItem(
                      iconPath: AssetsIconsPath.icAccountNav,
                      label: "Account",
                      isSelected: controller.selectedIndex.value == 3,
                      onTap: () => controller.changeIndex(3),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget navItem({
  required String iconPath,
  required String label,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      // padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF1E1E1E) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          AppImage(
            path: iconPath,
            width: 12,
            height: 12,
            iconColor: isSelected ? Colors.amber : Colors.white54,
          ),
          const SizedBox(width: 6),
          AppText(
            data: label,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.amber : Colors.white54,
          ),
        ],
      ),
    ),
  );
}
