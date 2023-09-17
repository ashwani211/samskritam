import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/loading_screen.dart';
import 'package:samskritam/features/lessons/screens/lesson_types/akshara_sound_only.dart';
import 'package:samskritam/features/lessons/screens/lesson_types/akshara_table.dart';
import 'package:samskritam/features/lessons/screens/lesson_types/congratulations_image.dart';

class RouteLesson extends StatelessWidget {
  const RouteLesson({super.key, this.lessonData, this.nextQuestion});

  final Map<dynamic, dynamic>? lessonData;
  final Function()? nextQuestion;

  @override
  Widget build(BuildContext context) {
    switch (lessonData?["type"]){
      case "akshara_sound_only": 
        return Akshara(lessonData: lessonData, nextQuestion: nextQuestion,);
      case "congratulations_image":
        return LessonCongratulationsImage(imageLink :lessonData?["image"].toString());
      case "akshara_table" :
        return LessonAksharaTable(lessonData: lessonData!["table"], nextQuestion: nextQuestion, crossAxisCount: 5,);
      default: return  const LoadingScreen();
    }
    // return Center(
    //   child: Text(lessonData.toString()),
    // );
  }
}