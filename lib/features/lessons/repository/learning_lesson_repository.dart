
import 'package:samskritam/models/lesson_info.dart';

// final sliderValueProvider = StateProvider((ref) => 3.toDouble());
// final currentQuestionProvider = StateProvider((ref) => 3.toDouble());

class CurrrentQuestion {
  double curr;
  CurrrentQuestion(this.curr);
  double get() => curr;
  void set(double c) => curr = c;
  void increment() => curr++;

  void reset(){
    curr = 1;
  }

}

class LearningLesson {
  final String lessonId;
  late int totalQuestions;
  int questionsAnswered;
  final List<Lesson>? lessons;

  LearningLesson({required this.lessonId, required this.questionsAnswered, this.lessons,}){
    totalQuestions = lessons?.length??0;
  } 

  oneQuestionsAnswered(){
    questionsAnswered +=1;
  }

}