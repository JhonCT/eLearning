import 'package:elearning_20/entities/certificate_entity.dart';

class Certificate {
  final String id;
  final dynamic course;
  final dynamic user;
  final String date;

  Certificate({this.id, this.course, this.user, this.date});

  Certificate copyWith(
          {String id, dynamic course, dynamic user, String date}) =>
      Certificate(
          id: id ?? this.id,
          course: course ?? this.course,
          user: user ?? this.user,
          date: date ?? this.date);

  @override
  int get hashCode =>
      id.hashCode ^ course.hashCode ^ user.hashCode ^ date.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Certificate &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          course == other.course &&
          user == other.user &&
          date == other.date;

  @override
  String toString() =>
      'CertificateEntity { id: $id, course: $course, user: $user, date: $date }';

  CertificateEntity toEntity() => CertificateEntity(id, course, user, date);

  static Certificate fromEntity(CertificateEntity entity) => Certificate(
      id: entity.id,
      course: entity.course,
      user: entity.user,
      date: entity.date);
}
