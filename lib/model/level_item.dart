class LevelItem {
  String? title;
  int? levelNum;
  bool? isDone;

  LevelItem({this.title, this.isDone, this.levelNum});
  factory LevelItem.fromJson(Map<String, dynamic> parsedJson) {
    return LevelItem(
      title: parsedJson['title'] ?? "",
      levelNum: parsedJson['levelNum'],
      isDone: parsedJson['isDone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "levelNum": levelNum,
      "isDone": isDone,
    };
  }
}
