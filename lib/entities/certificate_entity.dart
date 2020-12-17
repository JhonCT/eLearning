import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class CertificateEntity extends Equatable {
  final String id;
  final dynamic course;
  final dynamic user;
  final String date;

  CertificateEntity(this.id, this.course, this.user, this.date);

  Map<String, Object> toJson() {
    return {'id': id, 'course': course, 'user': user, 'date': date};
  }

  @override
  List<Object> get props => [id, course, user, date];

  @override
  String toString() =>
      'CertificateEntity { id: $id, course: $course, user: $user, date: $date }';

  static CertificateEntity fromJson(Map<String, Object> json) {
    return CertificateEntity(
      json['id'] as String,
      json['course'] as dynamic,
      json['user'] as dynamic,
      json['date'] as String,
    );
  }

  static CertificateEntity fromSnapshot(DocumentSnapshot snap) =>
      CertificateEntity(
        snap.id,
        snap.data()['course'],
        snap.data()['user'],
        snap.data()['date'],
      );

  Map<String, Object> toDocument() => {
        'id': id,
        'course': course,
        'user': user,
        'date': date,
      };
}
