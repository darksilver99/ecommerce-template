// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentDataStruct extends BaseStruct {
  PaymentDataStruct({
    int? id,
    String? subject,
  })  : _id = id,
        _subject = subject;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  set subject(String? val) => _subject = val;
  bool hasSubject() => _subject != null;

  static PaymentDataStruct fromMap(Map<String, dynamic> data) =>
      PaymentDataStruct(
        id: castToType<int>(data['id']),
        subject: data['subject'] as String?,
      );

  static PaymentDataStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'subject': _subject,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'subject': serializeParam(
          _subject,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        subject: deserializeParam(
          data['subject'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PaymentDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentDataStruct &&
        id == other.id &&
        subject == other.subject;
  }

  @override
  int get hashCode => const ListEquality().hash([id, subject]);
}

PaymentDataStruct createPaymentDataStruct({
  int? id,
  String? subject,
}) =>
    PaymentDataStruct(
      id: id,
      subject: subject,
    );
