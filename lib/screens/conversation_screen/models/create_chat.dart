class CreateChat {
  String? sId;
  List? participants;
  String? createdAt;
  String? updatedAt;
  int? iV;

  CreateChat({this.sId, this.participants, this.createdAt, this.updatedAt, this.iV});

  CreateChat.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    participants = json['participants'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }
}
