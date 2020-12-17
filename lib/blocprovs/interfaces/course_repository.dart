import 'package:elearning_20/models/course.dart';

abstract class CourseRepository {
  Future<void> addNewCourse(Course course);
  Stream<List<Course>> courses();
  Future<Course> course(String id);
  Future<void> deleteCourse(Course course);
  Future<void> submitQuestionQuiz(dynamic question);
}
