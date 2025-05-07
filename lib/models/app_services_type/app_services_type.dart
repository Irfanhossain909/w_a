class AppServicesCategory {
  String? sId;
  String? name;
  String? image;
  String? createdAt;
  String? updatedAt;
  int? iV;

  AppServicesCategory({this.sId, this.name, this.image, this.createdAt, this.updatedAt, this.iV});

  AppServicesCategory.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }
}



