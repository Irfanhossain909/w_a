
import 'package:get/get.dart';
import 'package:w_a/utils/app_all_log/error_log.dart';

class PersonalInfoController extends GetxController {
  RxBool isLoading = true.obs;
  // Rx<AppUserData> user = AppUserData().obs;

  void initialData() {
    try {
      isLoading.value = true;
      // user.value = appUserData.value;
      isLoading.value = false;
    } catch (e) {
      errorLog("initial Data", e);
    }
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
