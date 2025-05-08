// // qr_scanner_controller.dart

// import 'package:get/get.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// class QRScannerController extends GetxController {
//   final MobileScannerController scannerController = MobileScannerController();

//   // Torch এবং Camera এর অবস্থা পর্যবেক্ষণের জন্য Rx ভেরিয়েবল
//   Rx<TorchState> torchState = TorchState.off.obs;
//   Rx<CameraFacing> cameraFacing = CameraFacing.back.obs;

//   @override
//   void onInit() {
//     super.onInit();

//     // Torch এবং CameraFacing stream listen করে value update
//     scannerController.torchState.listen((state) {
//       torchState.value = state;
//     });

//     scannerController.cameraFacingState.listen((facing) {
//       cameraFacing.value = facing;
//     });
//   }

//   void toggleTorch() {
//     scannerController.toggleTorch();
//   }

//   void switchCamera() {
//     scannerController.switchCamera();
//   }

//   void stopScanner() {
//     scannerController.stop();
//   }

//   void startScanner() {
//     scannerController.start();
//   }
// }
