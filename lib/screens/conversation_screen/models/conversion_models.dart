class ConversionModels {
  String? sId;
  String? chatId;
  String? messageType;
  String? createdAt;
  String? updatedAt;
  String? text;
  Sender? sender;
  Offer? offer;
  ConversionModels({
    this.chatId,
    this.createdAt,
    this.messageType,
    this.offer,
    this.sId,
    this.sender,
    this.text,
    this.updatedAt,
  });

  ConversionModels.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    chatId = json['chatId'];
    sender = json['sender'] != null ? Sender.fromJson(json['sender']) : null;
    offer = json['offer'] != null ? Offer.fromJson(json['offer']) : null;
    text = json['text'];
    messageType = json['messageType'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
}

class Sender {
  String? sId;
  String? name;
  String? profile;

  Sender({this.sId, this.name, this.profile});

  Sender.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    profile = json['profile'];
  }
}

class Offer {
  String? service;
  String? price;
  String? offerDescription;
  String? offerId;
  String? status;

  Offer({this.service, this.price, this.offerDescription, this.offerId, this.status});

  Offer.fromJson(Map<String, dynamic> json) {
    service = json['service'];
    price = json['price'];
    offerDescription = json['offerDescription'];
    offerId = json['offerId'];
    status = json['status'];
  }
}
