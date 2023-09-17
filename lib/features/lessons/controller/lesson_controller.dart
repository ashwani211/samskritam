import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/features/lessons/repository/lesson_repository.dart';
import 'package:samskritam/models/lesson_info.dart';

final lessonControllerProvider = Provider((ref) {
  final lessonRepository = ref.watch(lessonRepositoryProvider);
  return LessonController(lessonRepository, ref);
});

class LessonController {
  final LessonRepository lessonRepository;
  final ProviderRef ref;

  LessonController(this.lessonRepository, this.ref);

  Stream<List<LessonInfo>> getLessons()  {
    return lessonRepository.getLessons();
  }
}
