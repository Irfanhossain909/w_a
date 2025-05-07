
import 'package:get/get.dart';
import 'package:w_a/utils/app_all_log/error_log.dart';

class AboutUsScreenController extends GetxController {
  // final RuleRepository ruleRepository = RuleRepository();
  RxString aboutData = "".obs;
  RxBool isLoading = true.obs;

  Future<void> initialDataLoad() async {
    try {
      isLoading.value = true;
      // aboutData.value = await ruleRepository.aboutUs();
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
