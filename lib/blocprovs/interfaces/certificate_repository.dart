import 'package:elearning_20/models/certificate.dart';

abstract class CertificateRepository {
  Future<void> add(Certificate certificate);
  Stream<List<Certificate>> certificates();
  Future<Certificate> certificate(String id);
  Future<void> delete(Certificate course);
  Future<void> update(Certificate certificate);
}
