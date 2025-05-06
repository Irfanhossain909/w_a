import 'package:flutter/material.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';

class ProviderBookingDetailsScreen extends StatelessWidget {
  const ProviderBookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Booking Details"),
    );
  }
}