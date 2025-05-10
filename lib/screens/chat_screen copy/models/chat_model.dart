class ChatModel {
  String? sId;
  List<Participants>? participants;
  LastMessage? lastMessage;

  ChatModel({this.sId, this.participants, this.lastMessage});

  ChatModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    if (json['participants'] != null) {
      participants = <Participants>[];
      json['participants'].forEach((v) {
        participants!.add(Participants.fromJson(v));
      });
    }
    lastMessage = json['lastMessage'] != null ? LastMessage.fromJson(json['lastMessage']) : null;
  }
}

class Participants {
  String? sId;
  String? name;
  String? profile;

  Participants({this.sId, this.name, this.profile});

  Participants.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    profile = json['profile'];
  }
}

class LastMessage {
  String? sId;
  String? sender;
  String? text;
  String? createdAt;

  LastMessage({this.sId, this.sender, this.text, this.createdAt});

  LastMessage.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    sender = json['sender'];
    text = json['text'];
    createdAt = json['createdAt'];
  }
}
