import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class PersonEntity extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String fullname;
  final String email;
  final String phone;
  final String photo;

  PersonEntity(this.id, this.firstName, this.lastName, this.fullname,
      this.email, this.phone, this.photo);

  Map<String, Object> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'fullname': fullname,
      'email': email,
      'phone': phone,
      'photo': photo,
    };
  }

  @override
  String toString() =>
      'PersonEntity { id: $id, firstName: $firstName, lastName: $lastName, fullname: $fullname, email: $email, phone: $phone, photo: $photo }';

  static PersonEntity fromJson(Map<String, Object> json) {
    return PersonEntity(
      json['id'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      json['fullname'] as String,
      json['email'] as String,
      json['phone'] as String,
      json['photo'] as String,
    );
  }

  static PersonEntity fromSnapshot(DocumentSnapshot snap) {
    return PersonEntity(
      snap.id,
      snap.data()['firstName'],
      snap.data()['lastName'],
      snap.data()['fullname'],
      snap.data()['email'],
      snap.data()['phone'],
      snap.data()['photo'],
    );
  }

  Map<String, Object> toDocument() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'fullname': fullname,
      'email': email,
      'phone': phone,
      'photo': photo,
    };
  }
}
