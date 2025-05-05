import 'package:get/get.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/routes/bindings/app_bindings.dart';
import 'package:w_a/screens/customer_home_screen/customer_home_screen.dart';
import 'package:w_a/screens/customer_navigation_screen/customer_navigation_screen.dart';

List<GetPage> appRoutesFile = <GetPage>[
  // ////////// initial page
 
  // /////////// auth
  

  ///////////// navigation screen or main screen
  
  GetPage(name: AppRoutes.customerNavigationScreen,binding: AppBindings(), page: ()=> CustomerNavigationScreen()),
  GetPage(
    name: AppRoutes.customerHomeScreen,
    binding: AppBindings(),
    page: () => CustomerHomeScreen(),
  ),

 

  // /////////////  services
  

  ////////////////////  profile
  
  ////////////////// conversation  screen
  
  // ///////////////// payment
  

  // /////////////// more screens
  

  // ////////////////// account
  
  
  // ///////////  receipt
 
];
