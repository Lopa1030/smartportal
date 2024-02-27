import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EventpostRecord extends FirestoreRecord {
  EventpostRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "postdate" field.
  DateTime? _postdate;
  DateTime? get postdate => _postdate;
  bool hasPostdate() => _postdate != null;

  // "postimg" field.
  String? _postimg;
  String get postimg => _postimg ?? '';
  bool hasPostimg() => _postimg != null;

  // "postdes" field.
  String? _postdes;
  String get postdes => _postdes ?? '';
  bool hasPostdes() => _postdes != null;

  // "postuser" field.
  DocumentReference? _postuser;
  DocumentReference? get postuser => _postuser;
  bool hasPostuser() => _postuser != null;

  // "postcap" field.
  String? _postcap;
  String get postcap => _postcap ?? '';
  bool hasPostcap() => _postcap != null;

  void _initializeFields() {
    _postdate = snapshotData['postdate'] as DateTime?;
    _postimg = snapshotData['postimg'] as String?;
    _postdes = snapshotData['postdes'] as String?;
    _postuser = snapshotData['postuser'] as DocumentReference?;
    _postcap = snapshotData['postcap'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventpost');

  static Stream<EventpostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventpostRecord.fromSnapshot(s));

  static Future<EventpostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventpostRecord.fromSnapshot(s));

  static EventpostRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventpostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventpostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventpostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventpostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventpostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventpostRecordData({
  DateTime? postdate,
  String? postimg,
  String? postdes,
  DocumentReference? postuser,
  String? postcap,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postdate': postdate,
      'postimg': postimg,
      'postdes': postdes,
      'postuser': postuser,
      'postcap': postcap,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventpostRecordDocumentEquality implements Equality<EventpostRecord> {
  const EventpostRecordDocumentEquality();

  @override
  bool equals(EventpostRecord? e1, EventpostRecord? e2) {
    return e1?.postdate == e2?.postdate &&
        e1?.postimg == e2?.postimg &&
        e1?.postdes == e2?.postdes &&
        e1?.postuser == e2?.postuser &&
        e1?.postcap == e2?.postcap;
  }

  @override
  int hash(EventpostRecord? e) => const ListEquality()
      .hash([e?.postdate, e?.postimg, e?.postdes, e?.postuser, e?.postcap]);

  @override
  bool isValidKey(Object? o) => o is EventpostRecord;
}
