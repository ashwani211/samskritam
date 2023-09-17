class LessonInfo {
  final int? lessonNo;
  final int? cellCount;
  final String? name;
  final String? imageUrl;
  final String? type;

  LessonInfo({this.lessonNo, this.cellCount, this.name, this.imageUrl, this.type});

  Map<String, dynamic> toMap() {
    return {
      "lesson_no" : lessonNo??-1,
      "cell_count" : cellCount??1,
      "name" : name??"",
      "image" : imageUrl,
      "type" : type,
    };
  }

  factory LessonInfo.fromMap(Map<String, dynamic> map){
    return LessonInfo(
      lessonNo: map["lesson_no"],
      cellCount: map["cell_count"],
      name: map["name"],
      imageUrl: map["image"],
      type: map["type"]
    );
  }
}
