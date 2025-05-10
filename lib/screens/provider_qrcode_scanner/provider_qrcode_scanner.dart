
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/utils/app_all_log/app_log.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';

class ProviderQrCodeScannerScreen extends StatefulWidget {
  const ProviderQrCodeScannerScreen({super.key});

  @override
  State<ProviderQrCodeScannerScreen> createState() =>
      _ProviderQrCodeScannerScreenState();
}

class _ProviderQrCodeScannerScreenState
    extends State<ProviderQrCodeScannerScreen>
    with SingleTickerProviderStateMixin {
  final MobileScannerController _controller = MobileScannerController();
  late AnimationController _animationController;
  late Animation<double> _animation;

  final double scanBoxSize = 250;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true); // Makes it go up and down

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  void _handleBarcode(BarcodeCapture barcodes) {
    final String? code = barcodes.barcodes.firstOrNull?.rawValue;
    if (code != null) {
      appLog('Scanned: $code');
      Get.offNamed(AppRoutes.providerChackBookingScreen);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Scan"),
      body: Stack(
        children: [
          MobileScanner(controller: _controller, onDetect: _handleBarcode),

          Center(
            child: SizedBox(
              width: scanBoxSize,
              height: scanBoxSize,
              child: Stack(
                children: [
                  // Border corners
                  CustomPaint(
                    size: Size(scanBoxSize, scanBoxSize),
                    painter: ScannerOverlayPainter(),
                  ),
                  // Animated scanning bar
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Positioned(
                        top:
                            _animation.value *
                            (scanBoxSize - 6), // Bar height ~4
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 4,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.deepOrange, Colors.orangeAccent],
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScannerOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;

    final Paint paint =
        Paint()
          ..shader = AppColors.customGradient.createShader(rect)
          ..strokeWidth = 4
          ..style = PaintingStyle.stroke;

    const double cornerLength = 30;

    // Top left
    canvas.drawLine(Offset(0, 0), Offset(cornerLength, 0), paint);
    canvas.drawLine(Offset(0, 0), Offset(0, cornerLength), paint);

    // Top right
    canvas.drawLine(
      Offset(size.width, 0),
      Offset(size.width - cornerLength, 0),
      paint,
    );
    canvas.drawLine(
      Offset(size.width, 0),
      Offset(size.width, cornerLength),
      paint,
    );

    // Bottom left
    canvas.drawLine(
      Offset(0, size.height),
      Offset(0, size.height - cornerLength),
      paint,
    );
    canvas.drawLine(
      Offset(0, size.height),
      Offset(cornerLength, size.height),
      paint,
    );

    // Bottom right
    canvas.drawLine(
      Offset(size.width, size.height),
      Offset(size.width - cornerLength, size.height),
      paint,
    );
    canvas.drawLine(
      Offset(size.width, size.height),
      Offset(size.width, size.height - cornerLength),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
