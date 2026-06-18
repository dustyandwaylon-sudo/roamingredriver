import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlertsRecord extends FirestoreRecord {
  AlertsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "severity" field.
  String? _severity;
  String get severity => _severity ?? '';
  bool hasSeverity() => _severity != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _message = snapshotData['message'] as String?;
    _severity = snapshotData['severity'] as String?;
    _active = snapshotData['active'] as bool?;
    _timestamp = snapshotData['timestamp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alerts');

  static Stream<AlertsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlertsRecord.fromSnapshot(s));

  static Future<AlertsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlertsRecord.fromSnapshot(s));

  static AlertsRecord fromSnapshot(DocumentSnapshot snapshot) => AlertsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlertsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlertsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlertsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlertsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlertsRecordData({
  String? title,
  String? message,
  String? severity,
  bool? active,
  String? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'message': message,
      'severity': severity,
      'active': active,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlertsRecordDocumentEquality implements Equality<AlertsRecord> {
  const AlertsRecordDocumentEquality();

  @override
  bool equals(AlertsRecord? e1, AlertsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.severity == e2?.severity &&
        e1?.active == e2?.active &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(AlertsRecord? e) => const ListEquality()
      .hash([e?.title, e?.message, e?.severity, e?.active, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is AlertsRecord;
}
