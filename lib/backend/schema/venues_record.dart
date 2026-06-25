import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VenuesRecord extends FirestoreRecord {
  VenuesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "priceTier" field.
  String? _priceTier;
  String get priceTier => _priceTier ?? '';
  bool hasPriceTier() => _priceTier != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "geoPoint" field.
  String? _geoPoint;
  String get geoPoint => _geoPoint ?? '';
  bool hasGeoPoint() => _geoPoint != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "isOpen" field.
  bool? _isOpen;
  bool get isOpen => _isOpen ?? false;
  bool hasIsOpen() => _isOpen != null;

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
    if (value is GeoPoint) {
      return '${value.latitude},${value.longitude}';
    }
    return value.toString();
  }

  bool? _coerceBool(dynamic value) {
    if (value == null) {
      return null;
    }
    if (value is bool) {
      return value;
    }
    if (value is num) {
      return value != 0;
    }
    if (value is String) {
      final normalized = value.trim().toLowerCase();
      if (normalized == 'true') {
        return true;
      }
      if (normalized == 'false') {
        return false;
      }
    }
    return null;
  }

  void _initializeFields() {
    _name = _coerceString(snapshotData['name']);
    _category = _coerceString(snapshotData['category']);
    _priceTier = _coerceString(snapshotData['priceTier']);
    _rating = castToType<double>(snapshotData['rating']);
    _geoPoint = _coerceString(snapshotData['geoPoint']);
    _address = _coerceString(snapshotData['address']);
    _phone = _coerceString(snapshotData['phone']);
    _description = _coerceString(snapshotData['description']);
    _imageUrl = _coerceString(snapshotData['imageUrl']);
    _isOpen = _coerceBool(snapshotData['isOpen']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venues');

  static Stream<VenuesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VenuesRecord.fromSnapshot(s));

  static Future<VenuesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VenuesRecord.fromSnapshot(s));

  static VenuesRecord fromSnapshot(DocumentSnapshot snapshot) => VenuesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VenuesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VenuesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VenuesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VenuesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVenuesRecordData({
  String? name,
  String? category,
  String? priceTier,
  double? rating,
  String? geoPoint,
  String? address,
  String? phone,
  String? description,
  String? imageUrl,
  bool? isOpen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'priceTier': priceTier,
      'rating': rating,
      'geoPoint': geoPoint,
      'address': address,
      'phone': phone,
      'description': description,
      'imageUrl': imageUrl,
      'isOpen': isOpen,
    }.withoutNulls,
  );

  return firestoreData;
}

class VenuesRecordDocumentEquality implements Equality<VenuesRecord> {
  const VenuesRecordDocumentEquality();

  @override
  bool equals(VenuesRecord? e1, VenuesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.priceTier == e2?.priceTier &&
        e1?.rating == e2?.rating &&
        e1?.geoPoint == e2?.geoPoint &&
        e1?.address == e2?.address &&
        e1?.phone == e2?.phone &&
        e1?.description == e2?.description &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.isOpen == e2?.isOpen;
  }

  @override
  int hash(VenuesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.category,
        e?.priceTier,
        e?.rating,
        e?.geoPoint,
        e?.address,
        e?.phone,
        e?.description,
        e?.imageUrl,
        e?.isOpen
      ]);

  @override
  bool isValidKey(Object? o) => o is VenuesRecord;
}
