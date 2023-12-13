import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReservaEventosRecord extends FirestoreRecord {
  ReservaEventosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _fecha = snapshotData['fecha'] as DateTime?;
    _nombre = snapshotData['nombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservaEventos');

  static Stream<ReservaEventosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservaEventosRecord.fromSnapshot(s));

  static Future<ReservaEventosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservaEventosRecord.fromSnapshot(s));

  static ReservaEventosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservaEventosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservaEventosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservaEventosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservaEventosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservaEventosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservaEventosRecordData({
  DateTime? fecha,
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha': fecha,
      'nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservaEventosRecordDocumentEquality
    implements Equality<ReservaEventosRecord> {
  const ReservaEventosRecordDocumentEquality();

  @override
  bool equals(ReservaEventosRecord? e1, ReservaEventosRecord? e2) {
    return e1?.fecha == e2?.fecha && e1?.nombre == e2?.nombre;
  }

  @override
  int hash(ReservaEventosRecord? e) =>
      const ListEquality().hash([e?.fecha, e?.nombre]);

  @override
  bool isValidKey(Object? o) => o is ReservaEventosRecord;
}
