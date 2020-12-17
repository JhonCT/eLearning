import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning_20/blocprovs/interfaces/course_repository.dart';
import 'package:elearning_20/entities/course_entity.dart';
import 'package:elearning_20/models/course.dart';
import 'package:elearning_20/utils/constants.dart';

class FirebaseCourseRepository implements CourseRepository {
  final courseCollection = FirebaseFirestore.instance.collection('course');

  @override
  Future<void> addNewCourse(Course course) {
    return courseCollection.add(course.toEntity().toDocument());
  }

  @override
  Future<Course> course(String id) {
    return courseCollection.doc(id).get().then(
        (snapshot) => Course.fromEntity(CourseEntity.fromSnapshot(snapshot)));
  }

  @override
  Stream<List<Course>> courses() {
    return courseCollection.snapshots().map((snapshot) => snapshot.docs
        .map((doc) => Course.fromEntity(CourseEntity.fromSnapshot(doc)))
        .toList());
  }

  @override
  Future<void> deleteCourse(Course course) {
    return courseCollection.doc(course.id).delete();
  }

  Future<void> updateCourse(Course course) {
    return courseCollection
        .doc(course.id)
        .update(course.toEntity().toDocument());
  }

  @override
  Future<dynamic> submitQuestionQuiz(question) async {
    HttpClient client = HttpClient();
    client.badCertificateCallback =
        ((X509Certificate cert, String host, int port) => true);

    HttpClientRequest request =
        await client.postUrl(Uri.parse(glotioJava));
    request.headers.set('content-type', 'application/json');
    request.headers
        .set('authorization', '67461ca9-8460-4e70-8a63-4383bc2ba1f8');
    request.add(utf8.encode(json.encode({
      "files": [
        {"name": "Main.java", "content": question}
      ]
    })));

    HttpClientResponse response = await request.close();
    String reply = await response.transform(utf8.decoder).join();
    var result = json.decode(reply);
    return result;
  }
}
