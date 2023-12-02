import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DesayunoKidsRecord extends FirestoreRecord {
  DesayunoKidsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "ingredientes" field.
  String? _ingredientes;
  String get ingredientes => _ingredientes ?? '';
  bool hasIngredientes() => _ingredientes != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _ingredientes = snapshotData['ingredientes'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('desayunoKids');

  static Stream<DesayunoKidsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DesayunoKidsRecord.fromSnapshot(s));

  static Future<DesayunoKidsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DesayunoKidsRecord.fromSnapshot(s));

  static DesayunoKidsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DesayunoKidsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DesayunoKidsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DesayunoKidsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DesayunoKidsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DesayunoKidsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDesayunoKidsRecordData({
  String? nombre,
  String? ingredientes,
  int? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'ingredientes': ingredientes,
      'precio': precio,
    }.withoutNulls,
  );

  return firestoreData;
}

class DesayunoKidsRecordDocumentEquality
    implements Equality<DesayunoKidsRecord> {
  const DesayunoKidsRecordDocumentEquality();

  @override
  bool equals(DesayunoKidsRecord? e1, DesayunoKidsRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.ingredientes == e2?.ingredientes &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(DesayunoKidsRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.ingredientes, e?.precio]);

  @override
  bool isValidKey(Object? o) => o is DesayunoKidsRecord;
}
