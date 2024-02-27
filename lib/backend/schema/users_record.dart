import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "pass" field.
  String? _pass;
  String get pass => _pass ?? '';
  bool hasPass() => _pass != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "dateofbirth" field.
  String? _dateofbirth;
  String get dateofbirth => _dateofbirth ?? '';
  bool hasDateofbirth() => _dateofbirth != null;

  // "bloodgrp" field.
  String? _bloodgrp;
  String get bloodgrp => _bloodgrp ?? '';
  bool hasBloodgrp() => _bloodgrp != null;

  // "religion" field.
  String? _religion;
  String get religion => _religion ?? '';
  bool hasReligion() => _religion != null;

  // "nid" field.
  int? _nid;
  int get nid => _nid ?? 0;
  bool hasNid() => _nid != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _pass = snapshotData['pass'] as String?;
    _address = snapshotData['address'] as String?;
    _dateofbirth = snapshotData['dateofbirth'] as String?;
    _bloodgrp = snapshotData['bloodgrp'] as String?;
    _religion = snapshotData['religion'] as String?;
    _nid = castToType<int>(snapshotData['nid']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? pass,
  String? address,
  String? dateofbirth,
  String? bloodgrp,
  String? religion,
  int? nid,
  String? email,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'pass': pass,
      'address': address,
      'dateofbirth': dateofbirth,
      'bloodgrp': bloodgrp,
      'religion': religion,
      'nid': nid,
      'email': email,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.pass == e2?.pass &&
        e1?.address == e2?.address &&
        e1?.dateofbirth == e2?.dateofbirth &&
        e1?.bloodgrp == e2?.bloodgrp &&
        e1?.religion == e2?.religion &&
        e1?.nid == e2?.nid &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.pass,
        e?.address,
        e?.dateofbirth,
        e?.bloodgrp,
        e?.religion,
        e?.nid,
        e?.email,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
