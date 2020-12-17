import 'package:meta/meta.dart';
import 'package:elearning_20/entities/person_entity.dart';

@immutable
class Person {
  final String id;
  final String firstName;
  final String lastName;
  final String fullname;
  final String email;
  final String phone;
  final String photo;

  Person(
      {this.id,
      this.fullname,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.photo});

  Person copyWith(
          {String id,
          String fullname,
          String firstName,
          String lastName,
          String email,
          String phone,
          String photo}) =>
      Person(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        fullname: fullname ?? this.fullname,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        photo: photo ?? this.photo,
      );

  @override
  int get hashCode =>
      id.hashCode ^
      fullname.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      photo.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          fullname == other.fullname &&
          email == other.email &&
          phone == other.phone &&
          photo == other.photo;

  @override
  String toString() =>
      'PersonEntity { id: $id, firstName: $firstName, lastName: $lastName, fullname: $fullname, email: $email, phone: $phone, photo: $photo }';

  PersonEntity toEntity() =>
      PersonEntity(id, firstName, lastName, fullname, email, phone, photo);

  static Person fromEntity(PersonEntity entity) => Person(
      id: entity.id,
      firstName: entity.firstName,
      lastName: entity.lastName,
      fullname: entity.fullname,
      email: entity.email,
      phone: entity.phone,
      photo: entity.photo);
}
