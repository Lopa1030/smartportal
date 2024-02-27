import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "user_a" field.
  DocumentReference? _userA;
  DocumentReference? get userA => _userA;
  bool hasUserA() => _userA != null;

  // "user_b" field.
  DocumentReference? _userB;
  DocumentReference? get userB => _userB;
  bool hasUserB() => _userB != null;

  // "last_massage" field.
  String? _lastMassage;
  String get lastMassage => _lastMassage ?? '';
  bool hasLastMassage() => _lastMassage != null;

  // "last_massage_time" field.
  DateTime? _lastMassageTime;
  DateTime? get lastMassageTime => _lastMassageTime;
  bool hasLastMassageTime() => _lastMassageTime != null;

  // "last_massage_seen_by" field.
  List<DocumentReference>? _lastMassageSeenBy;
  List<DocumentReference> get lastMassageSeenBy =>
      _lastMassageSeenBy ?? const [];
  bool hasLastMassageSeenBy() => _lastMassageSeenBy != null;

  // "last_massage_sent_by" field.
  DocumentReference? _lastMassageSentBy;
  DocumentReference? get lastMassageSentBy => _lastMassageSentBy;
  bool hasLastMassageSentBy() => _lastMassageSentBy != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "last_message_time" field.
  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _lastMessageTime;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "last_message_sent_by" field.
  DocumentReference? _lastMessageSentBy;
  DocumentReference? get lastMessageSentBy => _lastMessageSentBy;
  bool hasLastMessageSentBy() => _lastMessageSentBy != null;

  // "last_message_seen_by" field.
  List<DocumentReference>? _lastMessageSeenBy;
  List<DocumentReference> get lastMessageSeenBy =>
      _lastMessageSeenBy ?? const [];
  bool hasLastMessageSeenBy() => _lastMessageSeenBy != null;

  void _initializeFields() {
    _users = getDataList(snapshotData['users']);
    _userA = snapshotData['user_a'] as DocumentReference?;
    _userB = snapshotData['user_b'] as DocumentReference?;
    _lastMassage = snapshotData['last_massage'] as String?;
    _lastMassageTime = snapshotData['last_massage_time'] as DateTime?;
    _lastMassageSeenBy = getDataList(snapshotData['last_massage_seen_by']);
    _lastMassageSentBy =
        snapshotData['last_massage_sent_by'] as DocumentReference?;
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMessageTime = snapshotData['last_message_time'] as DateTime?;
    _lastMessageSentBy =
        snapshotData['last_message_sent_by'] as DocumentReference?;
    _lastMessageSeenBy = getDataList(snapshotData['last_message_seen_by']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DocumentReference? userA,
  DocumentReference? userB,
  String? lastMassage,
  DateTime? lastMassageTime,
  DocumentReference? lastMassageSentBy,
  String? lastMessage,
  DateTime? lastMessageTime,
  DocumentReference? lastMessageSentBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_a': userA,
      'user_b': userB,
      'last_massage': lastMassage,
      'last_massage_time': lastMassageTime,
      'last_massage_sent_by': lastMassageSentBy,
      'last_message': lastMessage,
      'last_message_time': lastMessageTime,
      'last_message_sent_by': lastMessageSentBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.users, e2?.users) &&
        e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.lastMassage == e2?.lastMassage &&
        e1?.lastMassageTime == e2?.lastMassageTime &&
        listEquality.equals(e1?.lastMassageSeenBy, e2?.lastMassageSeenBy) &&
        e1?.lastMassageSentBy == e2?.lastMassageSentBy &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMessageTime == e2?.lastMessageTime &&
        e1?.lastMessageSentBy == e2?.lastMessageSentBy &&
        listEquality.equals(e1?.lastMessageSeenBy, e2?.lastMessageSeenBy);
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.users,
        e?.userA,
        e?.userB,
        e?.lastMassage,
        e?.lastMassageTime,
        e?.lastMassageSeenBy,
        e?.lastMassageSentBy,
        e?.lastMessage,
        e?.lastMessageTime,
        e?.lastMessageSentBy,
        e?.lastMessageSeenBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
