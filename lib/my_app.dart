import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/routes/app_routes_file.dart';
import 'package:w_a/routes/bindings/app_bindings.dart';
import 'package:w_a/utils/app_size.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppSize.size = MediaQuery.of(context).size;
    return GetMaterialApp(
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.appBg,
          surfaceTintColor: AppColors.appBg,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: AppColors.appBg,
      ),
      // Scaffold background color
      initialRoute: AppRoutes.splashScreen,
      getPages: appRoutesFile,
    );
  }
}
