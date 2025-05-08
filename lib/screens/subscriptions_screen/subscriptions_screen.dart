import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/screens/subscriptions_screen/controller/subsctiptions_controller.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';

class SubsCriptionsScreen extends StatelessWidget {
  final SubsctiptionsController controller = Get.put(SubsctiptionsController());

  final List<String> tabs = ["Standard Plan", "Premium Plan"];

  SubsCriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Subscribtions"),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Obx(
            () => Row(
              children: List.generate(tabs.length, (index) {
                final isSelected = controller.selectedIndex.value == index;
                return GestureDetector(
                  onTap: () => controller.changeTab(index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            isSelected
                                ? BorderSide(
                                  width: 3,
                                  color: Colors.transparent,
                                )
                                : BorderSide.none,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          tabs[index],
                          style: TextStyle(
                            color: isSelected ? Colors.amber : Colors.grey,
                            fontWeight:
                                isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                          ),
                        ),
                        if (isSelected)
                          Container(
                            margin: const EdgeInsets.only(top: 6),
                            height: 3,
                            width: 60,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.amber, Colors.orange],
                              ),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Obx(() {
              return controller.selectedIndex.value == 0
                  ? _buildTabContent("Standard Plan")
                  : _buildTabContent("Premium Plan");
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(String label) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return Container(
          width: 200,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              '$label - Card ${index + 1}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
