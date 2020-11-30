import 'package:mocked_cloud_firestore/src/collection_reference/collection_reference.dart';

class MkCloudFirestore {

  MkCollectionReference collection(_collectionPath) {
// var ref = MkCollectionReference._(_collectionPath);
    return MkCollectionReference(this, _collectionPath);
  }

  MkCloudFirestore.instance();
}
