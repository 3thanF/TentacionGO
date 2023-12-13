import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReservaMesasRecord extends FirestoreRecord {
  ReservaMesasRecord._(
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
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "monto" field.
  int? _monto;
  int get monto => _monto ?? 0;
  bool hasMonto() => _monto != null;

  // "correoElectronico" field.
  String? _correoElectronico;
  String get correoElectronico => _correoElectronico ?? '';
  bool hasCorreoElectronico() => _correoElectronico != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _monto = castToType<int>(snapshotData['monto']);
    _correoElectronico = snapshotData['correoElectronico'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservaMesas');

  static Stream<ReservaMesasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservaMesasRecord.fromSnapshot(s));

  static Future<ReservaMesasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservaMesasRecord.fromSnapshot(s));

  static ReservaMesasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservaMesasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservaMesasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservaMesasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservaMesasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservaMesasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservaMesasRecordData({
  String? nombre,
  DateTime? fecha,
  int? monto,
  String? correoElectronico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'fecha': fecha,
      'monto': monto,
      'correoElectronico': correoElectronico,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservaMesasRecordDocumentEquality
    implements Equality<ReservaMesasRecord> {
  const ReservaMesasRecordDocumentEquality();

  @override
  bool equals(ReservaMesasRecord? e1, ReservaMesasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.fecha == e2?.fecha &&
        e1?.monto == e2?.monto &&
        e1?.correoElectronico == e2?.correoElectronico;
  }

  @override
  int hash(ReservaMesasRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.fecha, e?.monto, e?.correoElectronico]);

  @override
  bool isValidKey(Object? o) => o is ReservaMesasRecord;
}
