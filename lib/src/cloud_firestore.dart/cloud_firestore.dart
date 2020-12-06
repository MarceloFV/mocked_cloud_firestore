import 'package:mocked_cloud_firestore/src/collection_reference/collection_reference.dart';

class MkCloudFirestore {
  List<MkCollectionReference> _collections = [];
  // List<MkCollectionReference> get collections => _collections;

  MkCollectionReference collection(collectionPath) {
    //Pode ser que nao exista a collectionPath ainda, porem quero adicionar um objeto
    if (_collections.isEmpty ||
        (!_collections.contains(MkCollectionReference(collectionPath))))
      _collections.add(MkCollectionReference(collectionPath));

   return _collections.firstWhere(
      (reference) => reference.path == collectionPath,
    );
  }

  MkCloudFirestore.instance();
}
