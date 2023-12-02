import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AlmuerzoKidsRecord extends FirestoreRecord {
  AlmuerzoKidsRecord._(
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
      FirebaseFirestore.instance.collection('almuerzoKids');

  static Stream<AlmuerzoKidsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlmuerzoKidsRecord.fromSnapshot(s));

  static Future<AlmuerzoKidsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlmuerzoKidsRecord.fromSnapshot(s));

  static AlmuerzoKidsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlmuerzoKidsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlmuerzoKidsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlmuerzoKidsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlmuerzoKidsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlmuerzoKidsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlmuerzoKidsRecordData({
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

class AlmuerzoKidsRecordDocumentEquality
    implements Equality<AlmuerzoKidsRecord> {
  const AlmuerzoKidsRecordDocumentEquality();

  @override
  bool equals(AlmuerzoKidsRecord? e1, AlmuerzoKidsRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.ingredientes == e2?.ingredientes &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(AlmuerzoKidsRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.ingredientes, e?.precio]);

  @override
  bool isValidKey(Object? o) => o is AlmuerzoKidsRecord;
}
