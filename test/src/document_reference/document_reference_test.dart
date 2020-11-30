import 'package:flutter_test/flutter_test.dart';
import 'package:mocked_cloud_firestore/src/cloud_firestore.dart/cloud_firestore.dart';
import 'package:mocked_cloud_firestore/src/collection_reference/collection_reference.dart';
import 'package:mocked_cloud_firestore/src/document_reference/document_reference.dart';

void main() {
  group('Document Reference parameters test', () {
/*
  firestore.instance.collection('users').add(); => MkDocumentReference()[Vai possuir o id por enquanto]
*/

    MkCloudFirestore firestore;
    MkCollectionReference collectionReference;
    MkDocumentReference documentReference;

    setUp(() {
      Map<String, dynamic> data = {'oi': 'oi'};

      firestore = MkCloudFirestore.instance();
      collectionReference = firestore.collection('users');
      documentReference = collectionReference.add(data);
    });

    test('DocumentReference forced generated id', () {
      expect(documentReference.id, 'xxxx');
    });
  });
}
