import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DesayunoSaludableRecord extends FirestoreRecord {
  DesayunoSaludableRecord._(
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
      FirebaseFirestore.instance.collection('desayunoSaludable');

  static Stream<DesayunoSaludableRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DesayunoSaludableRecord.fromSnapshot(s));

  static Future<DesayunoSaludableRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DesayunoSaludableRecord.fromSnapshot(s));

  static DesayunoSaludableRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DesayunoSaludableRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DesayunoSaludableRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DesayunoSaludableRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DesayunoSaludableRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DesayunoSaludableRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDesayunoSaludableRecordData({
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

class DesayunoSaludableRecordDocumentEquality
    implements Equality<DesayunoSaludableRecord> {
  const DesayunoSaludableRecordDocumentEquality();

  @override
  bool equals(DesayunoSaludableRecord? e1, DesayunoSaludableRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(DesayunoSaludableRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.descripcion, e?.precio]);

  @override
  bool isValidKey(Object? o) => o is DesayunoSaludableRecord;
}
