import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samskritam/features/lessons/repository/lesson_repository.dart';
import 'package:samskritam/models/lesson_home_info.dart';
import 'package:samskritam/models/lesson_info.dart';

final lessonControllerProvider = Provider((ref) {
  final lessonRepository = ref.watch(lessonRepositoryProvider);
  return LessonController(lessonRepository, ref);
});

class LessonController {
  final LessonRepository lessonRepository;
  final ProviderRef ref;

  LessonController(this.lessonRepository, this.ref);

  Stream<List<LessonHomeInfo>> getHomeLessons()  {
    return lessonRepository.getHomeLessons();
  }

  Stream<List<Lesson>> getLessons({required String lessonId})  {
    return lessonRepository.getLessons(lessonId);
  }

}
