import 'package:mocked_cloud_firestore/mocked_cloud_firestore.dart';
import 'package:mocked_cloud_firestore/src/cloud_firestore.dart/cloud_firestore.dart';
import 'package:mocked_cloud_firestore/src/document_reference/document_reference.dart';

class MkCollectionReference {
  final MkCloudFirestore firestore;
  String _path;

  // MkCollectionReference._(this._path);
  MkCollectionReference(this.firestore, this._path);


  MkDocumentReference add(Map<String, dynamic> data) {
    MkDocumentReference document = doc();
    document.setData(data);
    return document;
  }

  MkDocumentReference doc([String path]) {
  return MkDocumentReference.g(firestore, path);
  }
}
