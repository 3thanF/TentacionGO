import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AlmuerzoSaludableRecord extends FirestoreRecord {
  AlmuerzoSaludableRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('almuerzoSaludable');

  static Stream<AlmuerzoSaludableRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlmuerzoSaludableRecord.fromSnapshot(s));

  static Future<AlmuerzoSaludableRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AlmuerzoSaludableRecord.fromSnapshot(s));

  static AlmuerzoSaludableRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlmuerzoSaludableRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlmuerzoSaludableRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlmuerzoSaludableRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlmuerzoSaludableRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlmuerzoSaludableRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlmuerzoSaludableRecordData({
  String? nombre,
  String? descripcion,
  int? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlmuerzoSaludableRecordDocumentEquality
    implements Equality<AlmuerzoSaludableRecord> {
  const AlmuerzoSaludableRecordDocumentEquality();

  @override
  bool equals(AlmuerzoSaludableRecord? e1, AlmuerzoSaludableRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(AlmuerzoSaludableRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.descripcion, e?.precio]);

  @override
  bool isValidKey(Object? o) => o is AlmuerzoSaludableRecord;
}
