
import 'package:get/get.dart';
import 'package:w_a/utils/app_all_log/error_log.dart';

class TermsAndConditionScreenController extends GetxController {
  // final RuleRepository ruleRepository = RuleRepository();
  RxString termsAndConditions = "".obs;
  RxBool isLoading = true.obs;

  Future<void> initialDataLoad() async {
    try {
      isLoading.value = true;
      // termsAndConditions.value = await ruleRepository.termsAndCondition();
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
