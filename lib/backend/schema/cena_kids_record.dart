import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CenaKidsRecord extends FirestoreRecord {
  CenaKidsRecord._(
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
      FirebaseFirestore.instance.collection('cenaKids');

  static Stream<CenaKidsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CenaKidsRecord.fromSnapshot(s));

  static Future<CenaKidsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CenaKidsRecord.fromSnapshot(s));

  static CenaKidsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CenaKidsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CenaKidsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CenaKidsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CenaKidsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CenaKidsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCenaKidsRecordData({
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

class CenaKidsRecordDocumentEquality implements Equality<CenaKidsRecord> {
  const CenaKidsRecordDocumentEquality();

  @override
  bool equals(CenaKidsRecord? e1, CenaKidsRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.ingredientes == e2?.ingredientes &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(CenaKidsRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.ingredientes, e?.precio]);

  @override
  bool isValidKey(Object? o) => o is CenaKidsRecord;
}
