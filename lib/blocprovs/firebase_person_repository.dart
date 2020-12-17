import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning_20/blocprovs/interfaces/person_repository.dart';
import 'package:elearning_20/entities/person_entity.dart';
import 'package:elearning_20/models/person.dart';

class FirebasePersonRepository implements PersonRepository {
  final personCollection = FirebaseFirestore.instance.collection('person');

  @override
  Future<void> addNewPerson(Person person) {
    return personCollection.add(person.toEntity().toDocument());
  }

  @override
  Future<void> deletePerson(Person person) {
    return personCollection.doc(person.id).delete();
  }

  @override
  Stream<List<Person>> persons() {
    return personCollection.snapshots().map((snapshot) => snapshot.docs
        .map((doc) => Person.fromEntity(PersonEntity.fromSnapshot(doc)))
        .toList());
  }

  @override
  Future<void> updatePerson(Person person) {
    return personCollection
        .doc(person.id)
        .update(person.toEntity().toDocument());
  }
}
