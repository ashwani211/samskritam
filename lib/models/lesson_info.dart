class Lesson {
  final String? type;
  final String? text;
  final String? sound;
  final dynamic time;
  final String? imageUrl;
  final String? question;
  final Map<String,dynamic>? choices;
  final Map<String,dynamic>? table;

  Lesson({this.type, this.text, this.sound, this.time, this.imageUrl, this.question, this.choices, this.table});


  Map<String, dynamic> toMap() {
    return {
      "type" : type,
      "text" : text,
      "sound" : sound,
      "time" : time,
      "image" : imageUrl,
      "question" : question,
      "choices" : choices,
      "table" : table,
    };
  }

  factory Lesson.fromMap(Map<String, dynamic> map){
    return Lesson(
      type: map["type"],
      text: map["text"],
      sound: map["sound"],
      time: map["time"]?? DateTime.fromMicrosecondsSinceEpoch(0),
      imageUrl: map["image"],
      question: map["question"],
      choices: map["choices"],
      table: map["table"],
      
    );
  }
}
