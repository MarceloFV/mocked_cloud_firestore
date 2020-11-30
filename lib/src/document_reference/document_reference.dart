import 'package:mocked_cloud_firestore/src/cloud_firestore.dart/cloud_firestore.dart';

class MkDocumentReference {
  final String _path;
  final MkCloudFirestore firestore;
  String _id; // TODO: Corrigir isso pois o id nao pode mudar
  Map<String, dynamic> _data;

  String get id => _id;

  MkDocumentReference.g(this.firestore, this._path);

  void setData(Map<String, dynamic> data) {
    _data = data;
  }
}
