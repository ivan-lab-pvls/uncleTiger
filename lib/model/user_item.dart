class UserItem {
  int? keyCount;
  List<dynamic>? images;
  bool? musicOn;

  UserItem({this.keyCount, this.images, this.musicOn});
  factory UserItem.fromJson(Map<String, dynamic> parsedJson) {
    return UserItem(
        keyCount: parsedJson['keyCount'],
        images: parsedJson['images'],
        musicOn: parsedJson['musicOn']);
  }

  Map<String, dynamic> toJson() {
    return {"keyCount": keyCount, "images": images, "musicOn": musicOn};
  }
}
