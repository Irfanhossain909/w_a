// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// class ProviderQrCodeScannerScreen extends StatelessWidget {
//   final MobileScannerController controller = MobileScannerController();

//   ProviderQrCodeScannerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         MobileScanner(
//           controller: controller,
//           onDetect: (BarcodeCapture capture) {
//             final List<Barcode> barcodes = capture.barcodes;
//             for (final barcode in barcodes) {
//               final String? code = barcode.rawValue;
//               if (code != null) {
//                 print('Scanned code: $code');
//               }
//             }
//           },
//         ),
//         // নিজের overlay design
//         Align(
//           alignment: Alignment.topCenter,
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               "Scan your QR code",
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//           ),
//         ),
//         // Camera Flip & Flash button
//         Positioned(
//           bottom: 30,
//           left: 20,
//           child: IconButton(
//             icon: Icon(Icons.cameraswitch, color: Colors.white),
//             onPressed: () => controller.switchCamera(),
//           ),
//         ),
//         Positioned(
//           bottom: 30,
//           right: 20,
//           child: IconButton(
//             icon: Icon(Icons.flash_on, color: Colors.white),
//             onPressed: () => controller.toggleTorch(),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_all_log/app_log.dart';

class ProviderQrCodeScannerScreen extends StatefulWidget {
  const ProviderQrCodeScannerScreen({super.key});

  @override
  State<ProviderQrCodeScannerScreen> createState() =>
      _ProviderQrCodeScannerScreenState();
}

class _ProviderQrCodeScannerScreenState
    extends State<ProviderQrCodeScannerScreen> {
  final MobileScannerController _controller = MobileScannerController();
  Barcode? _barcode;

  void _handleBarcode(BarcodeCapture barcodes) {
    final String? code = barcodes.barcodes.firstOrNull?.rawValue;
    if (code != null) {
      appLog('Scanned: $code');
      Get.toNamed(AppRoutes.aboutUsScreen);
    }
  }

  Widget _barcodePreview(Barcode? value) {
    if (value == null) {
      return const Text(
        'Scan something!',
        style: TextStyle(color: Colors.white),
      );
    }
    return Text(
      value.displayValue ?? 'No value',
      style: const TextStyle(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          MobileScanner(controller: _controller, onDetect: _handleBarcode),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 3),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Text(
              "Align QR inside the box",
              style: TextStyle(color: Colors.white),
            ),
          ),
          // Positioned(
          //   top: 50,
          //   left: 20,
          //   child: Text("Scan QR Code", style: TextStyle(color: Colors.white, fontSize: 18)),
          // ),
          // Positioned(
          //   bottom: 30,
          //   left: 20,
          //   child: IconButton(
          //     icon: Icon(Icons.cameraswitch, color: Colors.white),
          //     onPressed: () => _controller.switchCamera(),
          //   ),
          // ),
          // Positioned(
          //   bottom: 30,
          //   right: 20,
          //   child: IconButton(
          //     icon: Icon(Icons.flash_on, color: Colors.white),
          //     onPressed: () => _controller.toggleTorch(),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     color: Colors.black45,
          //     padding: const EdgeInsets.all(12),
          //     child: _barcodePreview(_barcode),
          //   ),
          // ),
        ],
      ),
    );
  }
}
