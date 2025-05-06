import 'package:flutter/material.dart';
import 'package:w_a/widgets/Cards/service_show_in_bookmark.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';

class CustomerBookmarkScreen extends StatelessWidget {
  const CustomerBookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Bookmark"),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ServiceShowInBookmark();
          },
          
        ),
      ),
    );
  }
}

