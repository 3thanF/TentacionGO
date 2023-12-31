import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AlergiasRecord extends FirestoreRecord {
  AlergiasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreUsuario" field.
  String? _nombreUsuario;
  String get nombreUsuario => _nombreUsuario ?? '';
  bool hasNombreUsuario() => _nombreUsuario != null;

  // "emailUsuario" field.
  String? _emailUsuario;
  String get emailUsuario => _emailUsuario ?? '';
  bool hasEmailUsuario() => _emailUsuario != null;

  // "alergia" field.
  String? _alergia;
  String get alergia => _alergia ?? '';
  bool hasAlergia() => _alergia != null;

  void _initializeFields() {
    _nombreUsuario = snapshotData['nombreUsuario'] as String?;
    _emailUsuario = snapshotData['emailUsuario'] as String?;
    _alergia = snapshotData['alergia'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alergias');

  static Stream<AlergiasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlergiasRecord.fromSnapshot(s));

  static Future<AlergiasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlergiasRecord.fromSnapshot(s));

  static AlergiasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlergiasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlergiasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlergiasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlergiasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlergiasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlergiasRecordData({
  String? nombreUsuario,
  String? emailUsuario,
  String? alergia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreUsuario': nombreUsuario,
      'emailUsuario': emailUsuario,
      'alergia': alergia,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlergiasRecordDocumentEquality implements Equality<AlergiasRecord> {
  const AlergiasRecordDocumentEquality();

  @override
  bool equals(AlergiasRecord? e1, AlergiasRecord? e2) {
    return e1?.nombreUsuario == e2?.nombreUsuario &&
        e1?.emailUsuario == e2?.emailUsuario &&
        e1?.alergia == e2?.alergia;
  }

  @override
  int hash(AlergiasRecord? e) => const ListEquality()
      .hash([e?.nombreUsuario, e?.emailUsuario, e?.alergia]);

  @override
  bool isValidKey(Object? o) => o is AlergiasRecord;
}
