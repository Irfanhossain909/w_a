

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class InternetCheckMiddleWare extends GetMiddleware {
//   final ConnectivityService connectivityService = Get.find<ConnectivityService>();

//   @override
//   RouteSettings? redirect(String? route) {
//     if (connectivityService.connectionStatus.contains(ConnectivityResult.none)) {
//       return const RouteSettings(name: AppRoutes.errorScreen);
//     }
//     return super.redirect(route);
//   }

//   @override
//   GetPage? onPageCalled(GetPage? page) {
//     if (connectivityService.connectionStatus.contains(ConnectivityResult.none)) {
//       return GetPage(name: AppRoutes.errorScreen, page: () => const ErrorScreen());
//     }
//     return super.onPageCalled(page);
//   }

//   @override
//   GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
//     if (connectivityService.connectionStatus.contains(ConnectivityResult.none)) {
//       return () => const ErrorScreen();
//     }
//     return super.onPageBuildStart(page);
//   }

//   @override
//   FutureOr<RouteDecoder?> redirectDelegate(RouteDecoder route) {
//     connectivityService.connectionStatus;
//     if (connectivityService.connectionStatus.contains(ConnectivityResult.none)) {
//       return RouteDecoder.fromRoute(AppRoutes.errorScreen);
//     } else {
//       return super.redirectDelegate(route);
//     }
//   }
// }
