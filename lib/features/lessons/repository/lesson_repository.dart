
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/models/lesson_info.dart';


final lessonRepositoryProvider = Provider((ref) => LessonRepository(firebaseFirestore: FirebaseFirestore.instance));

class LessonRepository {
  final FirebaseFirestore firebaseFirestore;
  // final String usertype;

  // LessonRepository({this.firebaseFirestore, this.usertype});
  LessonRepository({required this.firebaseFirestore,});

  Stream<List<LessonInfo>> getLessons() {

    return firebaseFirestore.collection("lessons").snapshots().map((event) {
      List<LessonInfo> lessonsInfo = [];
      for ( var doc in event.docs){
        var lessonInfo = LessonInfo.fromMap(doc.data());
        lessonsInfo.add(lessonInfo);
      }
      return lessonsInfo;
    });
    

  }


}
