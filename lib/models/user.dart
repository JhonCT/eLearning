import 'person.dart';

class User {
  String id;
  String username;
  String password;
  Person person;

  User({this.id, this.username, this.password, this.person});

  String get userUsername {
    return username;
  }

  set userUsername(String username) {
    this.username = username;
  }

  String get userPassword {
    return password;
  }

  set userPassword(String password) {
    this.password = password;
  }

  Person get userPerson {
    return person;
  }

  set userPerson(Person person) {
    this.person = person;
  }

  factory User.fromJson(Map<String, dynamic> json) => new User(
        id: json['id'],
        username: json['username'],
        password: json['password'],
        person: json['person'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "person": person,
      };
}
