class AppServicesData {
  String? sId;
  String? image;
  String? title;
  String? location;
  dynamic rating;
  bool? bookmark;
  bool? adult;

  AppServicesData({
    this.sId,
    this.image,
    this.title,
    this.location,
    this.rating,
    this.bookmark,
    this.adult,
  });

  AppServicesData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    image = json['image'];
    title = json['title'];
    location = json['location'];
    rating = json['rating'];
    bookmark = json['bookmark'];
    adult = json['adult'];
  }
}
