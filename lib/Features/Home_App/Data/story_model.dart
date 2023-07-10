class story_model {
  String? photo;
  String? dateTime;
  String? text;
  String? storyId;


  story_model(
      this.text,
      this.dateTime,
      this.photo,
      this.storyId,

      );

  story_model.fromJson(Map<String, dynamic> json) {
    photo = json['photo'];
    text = json['text'];
    dateTime = json['dateTime'];
    storyId = json['storyId'];

  }

  Map<String, dynamic> toMap() {
    return {
      'photo': photo,
      'text': text,
      'dateTime': dateTime,
      'storyId': storyId,

    };
  }
}