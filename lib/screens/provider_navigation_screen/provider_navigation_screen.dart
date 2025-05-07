import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/const/assets_icons_path.dart';
import 'package:w_a/routes/app_routes_file.dart';
import 'package:w_a/screens/profile_screen/profile_screen.dart';
import 'package:w_a/screens/provider_add_event_screen/provider_addevent_screen.dart';
import 'package:w_a/screens/provider_home_screen/provider_home_screen.dart';
import 'package:w_a/screens/provider_navigation_screen/controllers/provider_navigation_screen_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class ProviderNavigationScreen extends StatelessWidget {
  const ProviderNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProviderNavigationScreenController(),
      builder: (controller) {
        return Scaffold(
          floatingActionButton: Transform.translate(
            offset: const Offset(0, 10), // Move down by 20 pixels
            child: AppImage(
              path: AssetsIconsPath.scan,
              width: AppSize.width(value: 32),
              height: AppSize.width(value: 32),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation
                  .centerDocked, // Center FAB above nav bar
          body: Obx(
            () => IndexedStack(
              index: controller.selectedIndex.value,
              children: [
                // Your screens here...
                ProviderHomeScreen(),
                ProviderAddEventScreen(),
                ProfileScreen(
                  providerNavigationControllerr: providerNavigationControllerr,
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(
              left: AppSize.width(value: 8),
              right: AppSize.width(value: 8),
              bottom: AppSize.width(value: 25),
              top: AppSize.width(value: 8),
            ),
            child: Obx(
              () => Row(
                spacing: 2,
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
                  SizedBox(width: 48), // Space for FAB
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.black900, // Always black background
        borderRadius: BorderRadius.circular(20),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(
              path: iconPath,
              width: 11,
              height: 11,
              iconColor: isSelected ? Colors.amber : Colors.white54,
            ),
            const SizedBox(width: 4),
            AppText(
              data: label,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: isSelected ? Colors.amber : Colors.white54,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    ),
  );
}
