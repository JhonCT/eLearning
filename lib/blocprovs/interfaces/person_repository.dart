import 'dart:async';

import 'package:elearning_20/models/person.dart';

abstract class PersonRepository {
  Future<void> addNewPerson(Person person);
  Future<void> deletePerson(Person person);
  Stream<List<Person>> persons();
  Future<void> updatePerson(Person person);
}
