import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeatherCacheRecord extends FirestoreRecord {
  WeatherCacheRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "locationName" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "temperature" field.
  double? _temperature;
  double get temperature => _temperature ?? 0.0;
  bool hasTemperature() => _temperature != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "lastUpdated" field.
  String? _lastUpdated;
  String get lastUpdated => _lastUpdated ?? '';
  bool hasLastUpdated() => _lastUpdated != null;

  void _initializeFields() {
    _locationName = snapshotData['locationName'] as String?;
    _temperature = castToType<double>(snapshotData['temperature']);
    _condition = snapshotData['condition'] as String?;
    _lastUpdated = snapshotData['lastUpdated'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('weather_cache');

  static Stream<WeatherCacheRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WeatherCacheRecord.fromSnapshot(s));

  static Future<WeatherCacheRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WeatherCacheRecord.fromSnapshot(s));

  static WeatherCacheRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WeatherCacheRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WeatherCacheRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WeatherCacheRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WeatherCacheRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WeatherCacheRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWeatherCacheRecordData({
  String? locationName,
  double? temperature,
  String? condition,
  String? lastUpdated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'locationName': locationName,
      'temperature': temperature,
      'condition': condition,
      'lastUpdated': lastUpdated,
    }.withoutNulls,
  );

  return firestoreData;
}

class WeatherCacheRecordDocumentEquality
    implements Equality<WeatherCacheRecord> {
  const WeatherCacheRecordDocumentEquality();

  @override
  bool equals(WeatherCacheRecord? e1, WeatherCacheRecord? e2) {
    return e1?.locationName == e2?.locationName &&
        e1?.temperature == e2?.temperature &&
        e1?.condition == e2?.condition &&
        e1?.lastUpdated == e2?.lastUpdated;
  }

  @override
  int hash(WeatherCacheRecord? e) => const ListEquality()
      .hash([e?.locationName, e?.temperature, e?.condition, e?.lastUpdated]);

  @override
  bool isValidKey(Object? o) => o is WeatherCacheRecord;
}
