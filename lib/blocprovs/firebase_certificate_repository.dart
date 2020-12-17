import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning_20/blocprovs/interfaces/certificate_repository.dart';
import 'package:elearning_20/entities/certificate_entity.dart';
import 'package:elearning_20/models/certificate.dart';

class FirebaseCertificateRepository implements CertificateRepository {
  final certificateCollection =
      FirebaseFirestore.instance.collection('certficate');

  @override
  Future<void> update(Certificate certificate) {
    return certificateCollection
        .doc(certificate.id)
        .update(certificate.toEntity().toDocument());
  }

  @override
  Future<void> add(Certificate certificate) {
    return certificateCollection.add(certificate.toEntity().toDocument());
  }

  @override
  Future<Certificate> certificate(String id) {
    return certificateCollection.doc(id).get().then((snapshot) =>
        Certificate.fromEntity(CertificateEntity.fromSnapshot(snapshot)));
  }

  @override
  Stream<List<Certificate>> certificates() {
    return certificateCollection.snapshots().map((snapshot) => snapshot.docs
        .map((doc) =>
            Certificate.fromEntity(CertificateEntity.fromSnapshot(doc)))
        .toList());
  }

  @override
  Future<void> delete(Certificate certificate) {
    return certificateCollection.doc(certificate.id).delete();
  }
}
