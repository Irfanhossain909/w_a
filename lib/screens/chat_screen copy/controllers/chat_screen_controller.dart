
import 'package:get/get.dart';
import 'package:w_a/screens/chat_screen%20copy/models/chat_model.dart';

class ChatScreenController extends GetxController {
  RxBool isLoading = true.obs;
  // AppChatAndConversionRepository appChatAndConversionRepository = AppChatAndConversionRepository();

  RxList<ChatModel> listOfChat = <ChatModel>[].obs;

  Future<void> initialLoadChatData() async {
    // try {
    //   isLoading.value = true;
    //   var response = await appChatAndConversionRepository.getChatList();
    //   if (response.isNotEmpty) {
    //     listOfChat.value = response;
    //   }
    //   isLoading.value = false;
    // } catch (e) {
    //   errorLog("initial load chat data", e);
    //   isLoading.value = false;
    // }

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   update();
    // });
  }

  @override
  void onInit() {
    initialLoadChatData();
    super.onInit();
  }
}
