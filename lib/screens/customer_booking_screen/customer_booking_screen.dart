import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a/const/app_colors.dart';
import 'package:w_a/models/service_model/booking_card_model.dart';
import 'package:w_a/routes/app_routes.dart';
import 'package:w_a/screens/customer_booking_screen/controller/customer_booking_controller.dart';
import 'package:w_a/utils/app_size.dart';
import 'package:w_a/widgets/app_image/app_image.dart';
import 'package:w_a/widgets/appbar/custom_appbar.dart';
import 'package:w_a/widgets/texts/app_text.dart';

class CustomerBookingScreen extends StatelessWidget {
  CustomerBookingScreen({super.key});

  final CustomerBookingScreenController bookingController = Get.put(
    CustomerBookingScreenController(),
  );

  @override
  Widget build(BuildContext context) {
    final services = bookingController.selectedServices;
    return Scaffold(
      appBar: CustomAppBar(title: "Booking"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSize.width(value: 12)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    final service = services[index];

                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppSize.width(value: 8),
                      ),
                      child: CustomerReservationCard(
                        service: service,
                        onTap: () {
                          Get.toNamed(AppRoutes.customerBookingDetailsScreen);
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomerReservationCard extends StatelessWidget {
  final Function()? onTap;
  const CustomerReservationCard({super.key, required this.service, this.onTap});

  final BookkingCardModel service;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.cardBg,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: AppImage(
                  url:
                      "https://media.istockphoto.com/id/1650639866/photo/contact-us-telemarketing-and-crm-black-woman-in-customer-service-with-headset-and-smile-on.jpg?s=1024x1024&w=is&k=20&c=nX9mmVOUu21CerWDefxymgT44iNcvCtUpYWlfuRfsH4=",
                  width: AppSize.width(value: 86),
                  height: AppSize.width(value: 86),
                ),
              ),
              const SizedBox(width: 10), // Image ar text er moddhe gap
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppText(
                            data: "Booking ID",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Category",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Event Name",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Date",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Booking Amount",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Booking Amount",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          6,
                          (index) => AppText(
                            data: ":",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w500,
                            color: AppColors.subTitle,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppText(
                            data: "1458",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Health & Wellness",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                            maxLines: 1,
                          ),
                          AppText(
                            data: "Riverside Medical Center",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                            maxLines: 1,
                          ),
                          AppText(
                            data: "25 jun 2025",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "300",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                          AppText(
                            data: "Brooklyn, New York",
                            fontSize: AppSize.width(value: 12),
                            fontWeight: FontWeight.w400,
                            color: AppColors.subTitle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
