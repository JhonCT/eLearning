import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:elearning_20/models/course.dart';

class CourseEntity extends Equatable {
  final String id;
  final String name;
  final String qualification;
  final Map<dynamic, dynamic> units;
  final String userId;
  final int progress;
  final int points;

  CourseEntity(this.id, this.name, this.qualification, this.units, this.userId,
      this.progress, this.points);

  Map<String, Object> toJson() {
    return {
      'id': id,
      'name': name,
      'qualification': qualification,
      'units': units,
      'userId': userId,
      'progress': progress,
      'points': points,
    };
  }

  @override
  List<Object> get props =>
      [id, name, qualification, units, userId, progress, points];

  @override
  String toString() =>
      'CourseEntity { id: $id, name: $name, qualification: $qualification, units: $units, userId: $userId, progress: $progress, points: $points }';

  static CourseEntity fromJson(Map<String, Object> json) {
    return CourseEntity(
      json['id'] as String,
      json['name'] as String,
      json['qualification'] as String,
      json['units'] as Map<dynamic, dynamic>,
      json['userId'] as String,
      json['progress'] as int,
      json['points'] as int,
    );
  }

  static CourseEntity fromSnapshot(DocumentSnapshot snap) => CourseEntity(
        snap.id,
        snap.data()['name'],
        snap.data()['qualification'],
        snap.data()['units'],
        snap.data()['userId'],
        snap.data()['progress'],
        snap.data()['points'],
      );

  Map<String, Object> toDocument() => {
        'id': id,
        'name': name,
        'qualification': qualification,
        'units': units,
        'userId': userId,
        'progress': progress,
        'points': points
      };
}

class UnitEntity extends Equatable {
  final String id;
  final String title;
  final String urlVideo;
  final List<Topic> topics;

  UnitEntity(this.id, this.title, this.urlVideo, this.topics);

  Map<String, Object> toJson() {
    return {
      'id': id,
      'title': title,
      'url_video': urlVideo,
      'topics': topics,
    };
  }

  @override
  String toString() =>
      'UnitEntity { id: $id, title: $title, urlVideo: $urlVideo, topics: $topics}';

  static UnitEntity fromJson(Map<String, Object> json) => UnitEntity(
        json['id'] as String,
        json['title'] as String,
        json['url_video'] as String,
        json['topic'] as List,
      );

  static UnitEntity fromSnapshot(DocumentSnapshot snap) => UnitEntity(
        snap.id,
        snap.data()['title'],
        snap.data()['url_video'],
        snap.data()['topics'],
      );

  Map<String, Object> toDocument() =>
      {'id': id, 'title': title, 'urlVideo': urlVideo, 'topics': topics};
}

class TopicEntity extends Equatable {
  final String id;
  final String title;
  final List<SubTopic> subTopics;

  TopicEntity(this.id, this.title, this.subTopics);

  Map<String, Object> toJson() {
    return {
      'id': id,
      'title': title,
      'sub_topics': subTopics,
    };
  }

  @override
  String toString() =>
      'TopicEntity { id: $id, title: $title, subTopics: $subTopics}';

  static TopicEntity fromJson(Map<String, Object> json) => TopicEntity(
        json['id'] as String,
        json['title'] as String,
        json['sub_topic'] as List,
      );

  static TopicEntity fromSnapshot(DocumentSnapshot snap) => TopicEntity(
        snap.id,
        snap.data()['title'],
        snap.data()['sub_topics'],
      );

  Map<String, Object> toDocument() =>
      {'id': id, 'title': title, 'sub_topics': subTopics};
}

class SubTopicEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final String exampleCode;
  final String result;
  final String tip;

  SubTopicEntity(this.id, this.title, this.description, this.exampleCode,
      this.result, this.tip);

  Map<String, Object> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'example_code': exampleCode,
      'result': result,
      'tip': tip,
    };
  }

  @override
  String toString() =>
      'SubTopicEntity { id: $id, title: $title, description: $description, exampleCode: $exampleCode, result: $result, tip: $tip }';

  static SubTopicEntity fromJson(Map<String, Object> json) => SubTopicEntity(
        json['id'] as String,
        json['title'] as String,
        json['description'] as String,
        json['example_code'] as String,
        json['result'] as String,
        json['tip'] as String,
      );

  static SubTopicEntity fromSnapshot(DocumentSnapshot snap) => SubTopicEntity(
        snap.id,
        snap.data()['title'],
        snap.data()['description'],
        snap.data()['example_code'],
        snap.data()['result'],
        snap.data()['tip'],
      );

  Map<String, Object> toDocument() => {
        'id': id,
        'title': title,
        'description': description,
        'example_code': exampleCode,
        'result': result,
        'tip': tip
      };
}
