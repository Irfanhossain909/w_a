
// import 'package:book_rite/models/dev_user_text_data/dev_user_data.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ConversationScreenController extends GetxController {
//   final messageList = <DevUserTextData>[].obs;
//   final TextEditingController inputController = TextEditingController();

//   // Load initial messages
//   void loadMessages() {
//     messageList.addAll(ChatMockData.getInitialMessages());
//     update();
//   }

//   void sendMessage() {
//     final text = inputController.text.trim();
//     if (text.isNotEmpty) {
//       messageList.add(DevUserTextData(text: text, isMe: true, time: _currentTime()));
//       inputController.clear();
//       update();
//     }
//   }

//   String _currentTime() {
//     final now = DateTime.now();
//     final hour = now.hour > 12 ? now.hour - 12 : now.hour;
//     final minute = now.minute.toString().padLeft(2, '0');
//     final suffix = now.hour >= 12 ? 'pm' : 'am';
//     return '$hour:$minute $suffix';
//   }

//   @override
//   void onInit() {
//     loadMessages(); // Optional – call only if you want initial data
//     super.onInit();
//   }
// }


// //============================================Demo chat========================

// class ChatMockData {
//   static List<DevUserTextData> getInitialMessages() => [
//         DevUserTextData(text: "Iacus, Sed Nullam tincidunt ?", isMe: false, time: "3:00 pm"),
//         DevUserTextData(text: "Praesent ipsum Praesent in .", isMe: false, time: "3:01 pm"),
//         DevUserTextData(text: "I need a confirm appointment... are you available now.", isMe: true, time: "3:01 pm"),
//         DevUserTextData(
//             text:
//                 "elementum massa Nunc eget est. felis, quam est. vel vitae tincidunt risus vel non id varius Donec eget elit non est. ex at",
//             isMe: false,
//             time: "3:02 pm"),
//         DevUserTextData(text: "eu Lorem faucibus lobortis, ex vitae lacus, cursus sodales.", isMe: true, time: "3:01 pm"),
//       ];
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/models/dev_user_text_data/dev_user_data.dart';

class ConversationScreenController extends GetxController {
  final messageList = <DevUserTextData>[].obs;
  final TextEditingController inputController = TextEditingController();
  final ScrollController scrollController = ScrollController(); // ✅ Scroll controller

  // Load initial messages
  void loadMessages() {
    messageList.addAll(ChatMockData.getInitialMessages());
    update();

    // Initial scroll to bottom
    Future.delayed(Duration(milliseconds: 100), () {
      scrollToBottom();
    });
  }

  void sendMessage() {
    final text = inputController.text.trim();
    if (text.isNotEmpty) {
      messageList.add(DevUserTextData(text: text, isMe: true, time: _currentTime()));
      inputController.clear();
      update();

      // ✅ Auto scroll to bottom after message sent
      Future.delayed(Duration(milliseconds: 100), () {
        scrollToBottom();
      });
    }
  }

  void scrollToBottom() {
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  String _currentTime() {
    final now = DateTime.now();
    final hour = now.hour > 12 ? now.hour - 12 : now.hour;
    final minute = now.minute.toString().padLeft(2, '0');
    final suffix = now.hour >= 12 ? 'pm' : 'am';
    return '$hour:$minute $suffix';
  }

  @override
  void onInit() {
    loadMessages(); // Optional – call only if you want initial data
    super.onInit();
  }
}

//============================================Demo chat========================

class ChatMockData {
  static List<DevUserTextData> getInitialMessages() => [
        DevUserTextData(text: "Iacus, Sed Nullam tincidunt ?", isMe: false, time: "3:00 pm"),
        DevUserTextData(text: "Praesent ipsum Praesent in .", isMe: false, time: "3:01 pm"),
        DevUserTextData(text: "I need a confirm appointment... are you available now.", isMe: true, time: "3:01 pm"),
        DevUserTextData(
            text:
                "elementum massa Nunc eget est. felis, quam est. vel vitae tincidunt risus vel non id varius Donec eget elit non est. ex at",
            isMe: false,
            time: "3:02 pm"),
        DevUserTextData(text: "eu Lorem faucibus lobortis, ex vitae lacus, cursus sodales.", isMe: true, time: "3:01 pm"),
      ];
}
