import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "venueId" field.
  String? _venueId;
  String get venueId => _venueId ?? '';
  bool hasVenueId() => _venueId != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  bool hasTimestamp() => _timestamp != null;

  // "imageUrls" field.
  List<String>? _imageUrls;
  List<String> get imageUrls => _imageUrls ?? const [];
  bool hasImageUrls() => _imageUrls != null;

  // "isPendingSync" field.
  bool? _isPendingSync;
  bool get isPendingSync => _isPendingSync ?? false;
  bool hasIsPendingSync() => _isPendingSync != null;

  void _initializeFields() {
    _venueId = snapshotData['venueId'] as String?;
    _userId = snapshotData['userId'] as String?;
    _userName = snapshotData['userName'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
    _timestamp = snapshotData['timestamp'] as String?;
    _imageUrls = getDataList(snapshotData['imageUrls']);
    _isPendingSync = snapshotData['isPendingSync'] as bool?;
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
  String? venueId,
  String? userId,
  String? userName,
  double? rating,
  String? comment,
  String? timestamp,
  bool? isPendingSync,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'venueId': venueId,
      'userId': userId,
      'userName': userName,
      'rating': rating,
      'comment': comment,
      'timestamp': timestamp,
      'isPendingSync': isPendingSync,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.venueId == e2?.venueId &&
        e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment &&
        e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.imageUrls, e2?.imageUrls) &&
        e1?.isPendingSync == e2?.isPendingSync;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.venueId,
        e?.userId,
        e?.userName,
        e?.rating,
        e?.comment,
        e?.timestamp,
        e?.imageUrls,
        e?.isPendingSync
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
