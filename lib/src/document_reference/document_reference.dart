
class MkDocumentReference {
  // final String path;
  // final MkCloudFirestore firestore;
  MkDocumentReference(this.id);

  String id ; // TODO: AutoGerar um id
  Map<String, dynamic> _data;

  Map<String, dynamic> get getData => _data;
  set setData(Map<String, dynamic> d) => _data = d;

  

  // String get id => id;

}
