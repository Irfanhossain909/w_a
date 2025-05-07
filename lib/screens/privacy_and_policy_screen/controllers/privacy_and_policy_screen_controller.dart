
import 'package:get/get.dart';
import 'package:w_a/utils/app_all_log/error_log.dart';
class PrivacyAndPolicyScreenController extends GetxController {
  // final RuleRepository ruleRepository = RuleRepository();
  RxString privacyAndPolicy = "".obs;
  RxBool isLoading = true.obs;

  Future<void> initialDataLoad() async {
    try {
      isLoading.value = true;
      // privacyAndPolicy.value = await ruleRepository.privacyAndPolicy();
      isLoading.value = false;
    } catch (e) {
      errorLog("initial data load", e);
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    initialDataLoad();
    super.onInit();
  }
}
