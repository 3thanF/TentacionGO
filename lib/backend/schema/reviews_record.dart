import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
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

  // "numeroEstrellas" field.
  int? _numeroEstrellas;
  int get numeroEstrellas => _numeroEstrellas ?? 0;
  bool hasNumeroEstrellas() => _numeroEstrellas != null;

  // "fotoPerfil" field.
  String? _fotoPerfil;
  String get fotoPerfil => _fotoPerfil ?? '';
  bool hasFotoPerfil() => _fotoPerfil != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _numeroEstrellas = castToType<int>(snapshotData['numeroEstrellas']);
    _fotoPerfil = snapshotData['fotoPerfil'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  String? nombre,
  String? descripcion,
  int? numeroEstrellas,
  String? fotoPerfil,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'numeroEstrellas': numeroEstrellas,
      'fotoPerfil': fotoPerfil,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.numeroEstrellas == e2?.numeroEstrellas &&
        e1?.fotoPerfil == e2?.fotoPerfil;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.descripcion, e?.numeroEstrellas, e?.fotoPerfil]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
