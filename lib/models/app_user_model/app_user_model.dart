class AppUserData {
  AccountInformation? accountInformation;
  String? sId;
  String? name;
  String? location;
  String? role;
  String? email;
  String? contact;
  String? profile;
  bool? verified;
  String? createdAt;
  String? updatedAt;
  String? dateOfBirth;
  int? iV;

  AppUserData({
    this.accountInformation,
    this.sId,
    this.name,
    this.role,
    this.email,
    this.profile,
    this.verified,
    this.createdAt,
    this.updatedAt,
    this.contact,
    this.iV,
    this.location,
    this.dateOfBirth,
  });

  AppUserData.fromJson(Map<String, dynamic> json) {
    accountInformation = json['accountInformation'] != null ? AccountInformation.fromJson(json['accountInformation']) : null;
    sId = json['_id'];
    name = json['name'];
    location = json['location'];
    role = json['role'];
    email = json['email'];
    contact = json['contact'];
    profile = json['profile'];
    verified = json['verified'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    dateOfBirth = json['dateOfBirth'];
    iV = json['__v'];
  }
}

class AccountInformation {
  bool? status;

  AccountInformation({this.status});

  AccountInformation.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }
}
