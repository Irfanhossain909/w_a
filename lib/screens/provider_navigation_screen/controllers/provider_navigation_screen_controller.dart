import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/screens/notification_screen/notification_screen.dart';

/////////  variable
// AppUserData? appUserData;
// Rx<AppUserData> appUserData = AppUserData().obs;

class ProviderNavigationScreenController extends GetxController {
  RxInt selectedIndex = RxInt(0);

  bool isExpanded = false;

  void toggleExpansion() {
    isExpanded = !isExpanded;
    update(); // Notifies GetBuilder to rebuild
  }

  changeIndex(int index) {
    selectedIndex.value = index;
  }

  ////////////////  notification
  callNotification() {
    showGeneralDialog(
      context: Get.context!,
      barrierColor: Colors.transparent,
      transitionDuration: Duration(milliseconds: 1000),
      pageBuilder: (context, animation, secondaryAnimation) {
        return const NotificationScreen();
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ).drive(
            Tween<Offset>(begin: const Offset(0, -1.0), end: Offset.zero),
          ),
          child: child,
        );
      },
    );
  }

  initialDataSetUp() {
    // try {
    //   final argData = Get.arguments;
    //   if (argData.runtimeType != Null) {
    //     appUserData.value = argData;
    //     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //       update();
    //     });
    //   }
    // } catch (e) {
    //   errorLog("navigation screen initial data setup function", e);
    // }
  }

  @override
  void onInit() {
    initialDataSetUp();
    super.onInit();
  }

  // @override
  // void onClose() {
  //   appUserData.dispose();
  //   super.onClose();
  // }
}
