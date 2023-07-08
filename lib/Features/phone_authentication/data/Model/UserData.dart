class UserData {
  String? name;
  String? personalPhoto;
  String? uId;
  String? phoneNumber;
  String? bio;

  UserData({
    this.name,
    this.personalPhoto,
    this.uId,
    this.phoneNumber,
    this.bio,
  });

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uId = json['uId'];
    phoneNumber = json['phoneNumber'];
    personalPhoto = json['personalPhoto'];
    bio = json['bio'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uId': uId,
      'phoneNumber': phoneNumber,
      'personalPhoto': personalPhoto,
      'bio': bio,
    };
  }
}
