

import 'package:w_a/models/service_model/booking_card_model.dart';

final serviceCollection = ServiceCollection(
  pending: [
    BookkingCardModel(
      serviceProviderName: "John's Plumbing",
      service: "Pipe Repair",
      price: 150.0,
      dateTime: DateTime(2025, 5, 1, 10, 0),
      status: "Pending",
    ),
    BookkingCardModel(
      serviceProviderName: "Maya's Cleaning",
      service: "Home Cleaning",
      price: 80.0,
      dateTime: DateTime(2025, 5, 2, 14, 30),
      status: "Pending",
    ),
    BookkingCardModel(
      serviceProviderName: "Elite Electricians",
      service: "Electrical Fix",
      price: 120.0,
      dateTime: DateTime(2025, 5, 3, 9, 0),
      status: "Pending",
    ),
    BookkingCardModel(
      serviceProviderName: "Swift Carpenters",
      service: "Furniture Repair",
      price: 200.0,
      dateTime: DateTime(2025, 5, 4, 11, 0),
      status: "Pending",
    ),
    BookkingCardModel(
      serviceProviderName: "Top Tech Solutions",
      service: "Computer Repair",
      price: 90.0,
      dateTime: DateTime(2025, 5, 5, 16, 0),
      status: "Pending",
    ),
  ],
  accepted: [
    BookkingCardModel(
      serviceProviderName: "John's Plumbing",
      service: "Water Heater",
      price: 300.0,
      dateTime: DateTime(2025, 4, 25, 10, 0),
      status: "Accepted",
    ),
    BookkingCardModel(
      serviceProviderName: "Maya's Cleaning",
      service: "Deep Cleaning",
      price: 150.0,
      dateTime: DateTime(2025, 4, 26, 12, 0),
      status: "Accepted",
    ),
    BookkingCardModel(
      serviceProviderName: "Elite Electricians",
      service: "Wiring Inspection",
      price: 100.0,
      dateTime: DateTime(2025, 4, 27, 15, 0),
      status: "Accepted",
    ),
    BookkingCardModel(
      serviceProviderName: "Swift Carpenters",
      service: "Custom Shelf Making",
      price: 350.0,
      dateTime: DateTime(2025, 4, 28, 9, 30),
      status: "Accepted",
    ),
    BookkingCardModel(
      serviceProviderName: "Top Tech Solutions",
      service: "Laptop Upgrade",
      price: 220.0,
      dateTime: DateTime(2025, 4, 29, 13, 0),
      status: "Accepted",
    ),
  ],
  complete: [
    BookkingCardModel(
      serviceProviderName: "John's Plumbing",
      service: "Drain Cleaning",
      price: 100.0,
      dateTime: DateTime(2025, 4, 15, 11, 0),
      status: "Completed",
    ),
    BookkingCardModel(
      serviceProviderName: "Maya's Cleaning",
      service: "Office Cleaning",
      price: 200.0,
      dateTime: DateTime(2025, 4, 16, 14, 0),
      status: "Completed",
    ),
    BookkingCardModel(
      serviceProviderName: "Elite Electricians",
      service: "Lighting Installation",
      price: 180.0,
      dateTime: DateTime(2025, 4, 17, 16, 30),
      status: "Completed",
    ),
    BookkingCardModel(
      serviceProviderName: "Swift Carpenters",
      service: "Door Replacement",
      price: 250.0,
      dateTime: DateTime(2025, 4, 18, 10, 0),
      status: "Completed",
    ),
    BookkingCardModel(
      serviceProviderName: "Top Tech Solutions",
      service: "Data Recovery",
      price: 300.0,
      dateTime: DateTime(2025, 4, 19, 17, 0),
      status: "Completed",
    ),
  ],
);
