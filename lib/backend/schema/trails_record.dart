import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrailsRecord extends FirestoreRecord {
  TrailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  bool hasDifficulty() => _difficulty != null;

  // "length" field.
  double? _length;
  double get length => _length ?? 0.0;
  bool hasLength() => _length != null;

  // "elevationGain" field.
  int? _elevationGain;
  int get elevationGain => _elevationGain ?? 0;
  bool hasElevationGain() => _elevationGain != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "safetyStatus" field.
  String? _safetyStatus;
  String get safetyStatus => _safetyStatus ?? '';
  bool hasSafetyStatus() => _safetyStatus != null;

  // "safetyMessage" field.
  String? _safetyMessage;
  String get safetyMessage => _safetyMessage ?? '';
  bool hasSafetyMessage() => _safetyMessage != null;

  // "pathCoordinates" field.
  List<String>? _pathCoordinates;
  List<String> get pathCoordinates => _pathCoordinates ?? const [];
  bool hasPathCoordinates() => _pathCoordinates != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  String? _coerceString(dynamic value) {
    if (value == null) {
      return null;
    }
    if (value is String) {
      return value;
    }
    if (value is num || value is bool) {
      return value.toString();
    }
    return value.toString();
  }

  void _initializeFields() {
    _name = _coerceString(snapshotData['name']);
    _difficulty = _coerceString(snapshotData['difficulty']);
    _length = castToType<double>(snapshotData['length']);
    _elevationGain = castToType<int>(snapshotData['elevationGain']);
    _duration = _coerceString(snapshotData['duration']);
    _rating = castToType<double>(snapshotData['rating']);
    _safetyStatus = _coerceString(snapshotData['safetyStatus']);
    _safetyMessage = _coerceString(snapshotData['safetyMessage']);
    _pathCoordinates = getDataList(snapshotData['pathCoordinates']);
    _imageUrl = _coerceString(snapshotData['imageUrl']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trails');

  static Stream<TrailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrailsRecord.fromSnapshot(s));

  static Future<TrailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrailsRecord.fromSnapshot(s));

  static TrailsRecord fromSnapshot(DocumentSnapshot snapshot) => TrailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrailsRecordData({
  String? name,
  String? difficulty,
  double? length,
  int? elevationGain,
  String? duration,
  double? rating,
  String? safetyStatus,
  String? safetyMessage,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'difficulty': difficulty,
      'length': length,
      'elevationGain': elevationGain,
      'duration': duration,
      'rating': rating,
      'safetyStatus': safetyStatus,
      'safetyMessage': safetyMessage,
      'imageUrl': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrailsRecordDocumentEquality implements Equality<TrailsRecord> {
  const TrailsRecordDocumentEquality();

  @override
  bool equals(TrailsRecord? e1, TrailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.difficulty == e2?.difficulty &&
        e1?.length == e2?.length &&
        e1?.elevationGain == e2?.elevationGain &&
        e1?.duration == e2?.duration &&
        e1?.rating == e2?.rating &&
        e1?.safetyStatus == e2?.safetyStatus &&
        e1?.safetyMessage == e2?.safetyMessage &&
        listEquality.equals(e1?.pathCoordinates, e2?.pathCoordinates) &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(TrailsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.difficulty,
        e?.length,
        e?.elevationGain,
        e?.duration,
        e?.rating,
        e?.safetyStatus,
        e?.safetyMessage,
        e?.pathCoordinates,
        e?.imageUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is TrailsRecord;
}
