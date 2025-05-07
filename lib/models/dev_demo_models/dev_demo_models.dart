// import 'package:flutter/material.dart';

// class DevDemoModels {
//   final String title;
//   final IconData icon;

//   DevDemoModels({required this.title, required this.icon});
// }

// class ServiceGrid extends StatelessWidget {
//   final List<DevDemoModels> services = [
//     DevDemoModels(title: "Home Service", icon: Icons.home),
//     DevDemoModels(title: "Washing", icon: Icons.local_laundry_service),
//     DevDemoModels(title: "Plumbing", icon: Icons.plumbing),
//     DevDemoModels(title: "Painting", icon: Icons.format_paint),
//     DevDemoModels(title: "Electrician", icon: Icons.electrical_services),
//     DevDemoModels(title: "Cleaning", icon: Icons.cleaning_services),
//     DevDemoModels(title: "Handyman", icon: Icons.build),
//     DevDemoModels(title: "Gardening", icon: Icons.grass),
//     DevDemoModels(title: "Removalists", icon: Icons.local_shipping),
//     DevDemoModels(title: "IT", icon: Icons.computer),
//     DevDemoModels(title: "Car Mechanic", icon: Icons.car_repair),
//     DevDemoModels(title: "AC Technician", icon: Icons.ac_unit),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Services')),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             crossAxisSpacing: 8,
//             mainAxisSpacing: 8,
//             childAspectRatio: 0.9,
//           ),
//           itemCount: services.length,
//           itemBuilder: (context, index) {
//             final service = services[index];
//             return Container(
//               decoration: BoxDecoration(
//                 color: Colors.blue.shade50,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(service.icon, size: 40, color: Colors.blueAccent),
//                   SizedBox(height: 10),
//                   Text(
//                     service.title,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
