class LessonHomeInfo {
  final String? lessonId;
  final int? lessonNo;
  final int? cellCount;
  final String? name;
  final String? imageUrl;
  final String? type;

  LessonHomeInfo({this.lessonId, this.lessonNo, this.cellCount, this.name, this.imageUrl, this.type});

  Map<String, dynamic> toMap() {
    return {
      "lesson_id" : lessonId??"0",
      "lesson_no" : lessonNo??-1,
      "cell_count" : cellCount??1,
      "name" : name??"",
      "image" : imageUrl,
      "type" : type,
    };
  }

  factory LessonHomeInfo.fromMap(Map<String, dynamic> map){
    return LessonHomeInfo(
      lessonId: map["lesson_id"],
      lessonNo: map["lesson_no"],
      cellCount: map["cell_count"],
      name: map["name"],
      imageUrl: map["image"],
      type: map["type"]
    );
  }
}
