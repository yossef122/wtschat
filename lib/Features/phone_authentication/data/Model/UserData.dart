class UserData {
  String? name;
  String? personalPhoto;
  String? uId;
  String? phoneNumber;

  UserData({
    this.name,
    this.personalPhoto,
    this.uId,
    this.phoneNumber,
  });

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uId = json['uId'];
    phoneNumber = json['phoneNumber'];
    personalPhoto = json['personalPhoto'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uId': uId,
      'phoneNumber': phoneNumber,
      'personalPhoto': personalPhoto,
    };
  }
}
