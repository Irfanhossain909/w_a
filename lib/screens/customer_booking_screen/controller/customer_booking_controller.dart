import 'package:get/get.dart';
import 'package:w_a/dev_data/service_data/dev_booking_card_dara.dart';
import 'package:w_a/models/service_model/booking_card_model.dart';

enum ServiceType { pending, accepted, completed }

class CustomerBookingScreenController extends GetxController {
  late ServiceCollection serviceCollectionData;
  var selectedType = ServiceType.pending.obs;

  @override
  void onInit() {
    super.onInit();
    serviceCollectionData = serviceCollection;
  }

  List<BookkingCardModel> get selectedServices {
    switch (selectedType.value) {
      case ServiceType.pending:
        return serviceCollectionData.pending;
      case ServiceType.accepted:
        return serviceCollectionData.accepted;
      case ServiceType.completed:
        return serviceCollectionData.complete;
    }
  }
}
