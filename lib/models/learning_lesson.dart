import 'lesson_info.dart';

class LearningLesson {
  final String lessonId;
  late int totalQuestions;
  int questionsAnswered;
  final List<Lesson>? lessons;

  LearningLesson({required this.lessonId, required this.questionsAnswered, this.lessons,}){
    totalQuestions = lessons?.length??0;
  } 

}