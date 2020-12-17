import 'package:elearning_20/entities/course_entity.dart';

class Course {
  final String id;
  final String name;
  final String qualification;
  final Map<dynamic, dynamic> units;
  final String userId;
  int progress;
  int points;

  Course(
      {this.id,
      this.name,
      this.qualification,
      this.units,
      this.userId,
      this.progress,
      this.points});

  Course copyWith(
          {String id,
          String name,
          String qualification,
          Map<dynamic, dynamic> units,
          String userId,
          int progress,
          int points}) =>
      Course(
          id: id ?? this.id,
          name: name ?? this.name,
          qualification: qualification ?? this.qualification,
          units: units ?? this.units,
          userId: userId ?? this.userId,
          progress: progress ?? this.progress,
          points: points ?? this.points);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      qualification.hashCode ^
      units.hashCode ^
      userId.hashCode ^
      progress.hashCode ^
      points.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Course &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          qualification == other.qualification &&
          units == other.units &&
          userId == other.userId &&
          progress == other.progress &&
          points == other.points;

  @override
  String toString() =>
      'CourseEntity { id: $id, name: $name, qualification: $qualification, units: $units, userId: $userId, progress: $progress, points: $points }';

  CourseEntity toEntity() =>
      CourseEntity(id, name, qualification, units, userId, progress, points);

  static Course fromEntity(CourseEntity entity) => Course(
      id: entity.id,
      name: entity.name,
      qualification: entity.qualification,
      units: entity.units,
      userId: entity.userId,
      progress: entity.progress,
      points: entity.points);

  set courseProgress(int progress) {
    this.progress = progress;
  }

  set coursePoints(int points) {
    this.points = points;
  }
}

class Unit {
  final String id;
  final String title;
  final String urlVideo;
  final List<Topic> topics;

  Unit({this.id, this.title, this.urlVideo, this.topics});

  Unit copyWith(
          {String id, String title, String urlVideo, List<Topic> topics}) =>
      Unit(
          id: id ?? this.id,
          title: title ?? this.title,
          urlVideo: urlVideo ?? this.urlVideo,
          topics: topics ?? this.topics);

  @override
  int get hashCode =>
      id.hashCode ^ title.hashCode ^ urlVideo.hashCode ^ topics.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Unit &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          urlVideo == other.urlVideo &&
          topics == other.topics;

  @override
  String toString() =>
      'UnitEntity { id: $id, title: $title, urlVideo: $urlVideo, topics: $topics}';

  UnitEntity toEntity() => UnitEntity(id, title, urlVideo, topics);

  static Unit fromEntity(UnitEntity entity) => Unit(
      id: entity.id,
      title: entity.title,
      urlVideo: entity.urlVideo,
      topics: entity.topics);
}

class Topic {
  final String id;
  final String title;
  final List<SubTopic> subTopics;

  Topic({this.id, this.title, this.subTopics});

  Topic copyWith({String id, String title, List<SubTopic> subTopics}) => Topic(
      id: id ?? this.id,
      title: title ?? this.title,
      subTopics: subTopics ?? this.subTopics);

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ subTopics.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Topic &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          subTopics == other.subTopics;

  @override
  String toString() =>
      'TopicEntity { id: $id, title: $title, subTopics: $subTopics}';

  TopicEntity toEntity() => TopicEntity(id, title, subTopics);

  static Topic fromEntity(TopicEntity entity) =>
      Topic(id: entity.id, title: entity.title, subTopics: entity.subTopics);
}

class SubTopic {
  final String id;
  final String title;
  final String description;
  final String exampleCode;
  final String result;
  final String tip;

  SubTopic(
      {this.id,
      this.title,
      this.description,
      this.exampleCode,
      this.result,
      this.tip});

  SubTopic copyWith(
          {String id,
          String title,
          String description,
          String exampleCode,
          String result,
          String tip}) =>
      SubTopic(
          id: id ?? this.id,
          title: title ?? this.title,
          description: description ?? this.description,
          exampleCode: exampleCode ?? this.exampleCode,
          result: result ?? this.result,
          tip: tip ?? this.tip);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      exampleCode.hashCode ^
      result.hashCode ^
      tip.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubTopic &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          description == other.description &&
          exampleCode == other.exampleCode &&
          result == other.result &&
          tip == other.tip;

  @override
  String toString() =>
      'SubTopicEntity { id: $id, title: $title, description: $description, exampleCode: $exampleCode, result: $result, tip: $tip}';

  SubTopicEntity toEntity() =>
      SubTopicEntity(id, title, description, exampleCode, result, tip);

  static Unit fromEntity(UnitEntity entity) => Unit(
      id: entity.id,
      title: entity.title,
      urlVideo: entity.urlVideo,
      topics: entity.topics);
}
