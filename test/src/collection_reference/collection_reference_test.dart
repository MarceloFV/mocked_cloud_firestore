import 'package:flutter_test/flutter_test.dart';
import 'package:mocked_cloud_firestore/src/cloud_firestore.dart/cloud_firestore.dart';
import 'package:mocked_cloud_firestore/src/collection_reference/collection_reference.dart';
import 'package:mocked_cloud_firestore/src/document_reference/document_reference.dart';

void main() {
  MkCloudFirestore firestore;
  MkCollectionReference collectionReference;
  Map<String, dynamic> data = {'oi': 'oi'};
  MkDocumentReference documentReference;
  group('Collection Reference parameters test', () {
    setUp(() {
      firestore = MkCloudFirestore.instance();
      documentReference = firestore.collection('teste').add(data);

    });
    test('Collection Reference data', () {
      expect(documentReference.getData, data);
    });

     test('Collection Reference id', () {
      expect(documentReference.id, DateTime.now().millisecondsSinceEpoch.toString());
    });
  });
}
