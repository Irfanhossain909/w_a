class BookkingCardModel {
  final String serviceProviderName;
  final String service;
  final double price;
  final DateTime dateTime;
  final String status;

  BookkingCardModel({
    required this.serviceProviderName,
    required this.service,
    required this.price,
    required this.dateTime,
    required this.status,
  });
}

class ServiceCollection {
  final List<BookkingCardModel> pending;
  final List<BookkingCardModel> accepted;
  final List<BookkingCardModel> complete;

  ServiceCollection({
    required this.pending,
    required this.accepted,
    required this.complete,
  });
}

