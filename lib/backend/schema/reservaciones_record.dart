import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReservacionesRecord extends FirestoreRecord {
  ReservacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  // "monto" field.
  String? _monto;
  String get monto => _monto ?? '';
  bool hasMonto() => _monto != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _fecha = snapshotData['fecha'] as String?;
    _monto = snapshotData['monto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservaciones');

  static Stream<ReservacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservacionesRecord.fromSnapshot(s));

  static Future<ReservacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservacionesRecord.fromSnapshot(s));

  static ReservacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservacionesRecordData({
  String? nombre,
  String? fecha,
  String? monto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'fecha': fecha,
      'monto': monto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservacionesRecordDocumentEquality
    implements Equality<ReservacionesRecord> {
  const ReservacionesRecordDocumentEquality();

  @override
  bool equals(ReservacionesRecord? e1, ReservacionesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.fecha == e2?.fecha &&
        e1?.monto == e2?.monto;
  }

  @override
  int hash(ReservacionesRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.fecha, e?.monto]);

  @override
  bool isValidKey(Object? o) => o is ReservacionesRecord;
}
