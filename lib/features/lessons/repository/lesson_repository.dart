
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/models/lesson_home_info.dart';
import 'package:samskritam/models/lesson_info.dart';


final lessonRepositoryProvider = Provider((ref) => LessonRepository(firebaseFirestore: FirebaseFirestore.instance));

class LessonRepository {
  final FirebaseFirestore firebaseFirestore;
  // final String usertype;

  // LessonRepository({this.firebaseFirestore, this.usertype});
  LessonRepository({required this.firebaseFirestore,});

  Stream<List<LessonHomeInfo>> getHomeLessons() {

    return firebaseFirestore.collection("lessons").snapshots().map((event) {
      List<LessonHomeInfo> lessonsInfo = [];
      for ( var doc in event.docs){
        var lessonInfo = LessonHomeInfo.fromMap(doc.data());
        lessonsInfo.add(lessonInfo);
      }
      return lessonsInfo;
    });
    

  }

  Stream<List<Lesson>> getLessons(String lessonId) {

    return firebaseFirestore.collection("lessons").doc(lessonId).collection("lesson").orderBy("time").snapshots().map((event) {
      List<Lesson> lessonsInfo = [];
      for ( var doc in event.docs){
        // print(doc.data());
        var lessonInfo = Lesson.fromMap(doc.data());
        lessonsInfo.add(lessonInfo);
      }
      return lessonsInfo;
    });
    

  }


}
