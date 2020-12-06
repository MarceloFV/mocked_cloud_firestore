import 'dart:math';

import 'package:flutter/foundation.dart';

import 'package:mocked_cloud_firestore/src/cloud_firestore.dart/cloud_firestore.dart';
import 'package:mocked_cloud_firestore/src/document_reference/document_reference.dart';

class MkCollectionReference {
  // final MkCloudFirestore firestore;
  String path;

  List<MkDocumentReference> _documents;
  List<MkDocumentReference> get documents => _documents;

  // MkCollectionReference._(this._path);
  MkCollectionReference(this.path);

  MkDocumentReference add(Map<String, dynamic> data) =>
      MkDocumentReference(generateId())..setData = data;

  generateId() => DateTime.now().millisecondsSinceEpoch.toString();

  MkDocumentReference doc([String id]) =>
      _documents.firstWhere((d) => d.id == id);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is MkCollectionReference &&
      o.path == path &&
      listEquals(o._documents, _documents);
  }

  @override
  int get hashCode => path.hashCode ^ _documents.hashCode;
}
