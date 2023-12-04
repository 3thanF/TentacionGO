import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PaginasNavegacionRecord extends FirestoreRecord {
  PaginasNavegacionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paginasNavegacion');

  static Stream<PaginasNavegacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaginasNavegacionRecord.fromSnapshot(s));

  static Future<PaginasNavegacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PaginasNavegacionRecord.fromSnapshot(s));

  static PaginasNavegacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaginasNavegacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaginasNavegacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaginasNavegacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaginasNavegacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaginasNavegacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaginasNavegacionRecordData({
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaginasNavegacionRecordDocumentEquality
    implements Equality<PaginasNavegacionRecord> {
  const PaginasNavegacionRecordDocumentEquality();

  @override
  bool equals(PaginasNavegacionRecord? e1, PaginasNavegacionRecord? e2) {
    return e1?.nombre == e2?.nombre;
  }

  @override
  int hash(PaginasNavegacionRecord? e) =>
      const ListEquality().hash([e?.nombre]);

  @override
  bool isValidKey(Object? o) => o is PaginasNavegacionRecord;
}
