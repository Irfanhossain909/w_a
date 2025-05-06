

import 'package:get/get.dart';

class ProviderEventInfoController extends GetxController {
  final images = [
    'https://picsum.photos/id/1015/400/300',
    'https://picsum.photos/id/1016/400/300',
    'https://picsum.photos/id/1018/400/300',
    'https://cdn.pixabay.com/photo/2025/03/31/21/30/italy-9505446_960_720.jpg',
  ];

  String selectedImage = 'https://picsum.photos/id/1015/400/300';

  void selectImage(String img) {
    selectedImage = img;
    update(); // 🔴 important
  }
}
