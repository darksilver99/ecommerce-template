// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookmarkDataStruct extends BaseStruct {
  BookmarkDataStruct({
    int? id,
    bool? isBookmark,
  })  : _id = id,
        _isBookmark = isBookmark;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "isBookmark" field.
  bool? _isBookmark;
  bool get isBookmark => _isBookmark ?? false;
  set isBookmark(bool? val) => _isBookmark = val;
  bool hasIsBookmark() => _isBookmark != null;

  static BookmarkDataStruct fromMap(Map<String, dynamic> data) =>
      BookmarkDataStruct(
        id: castToType<int>(data['id']),
        isBookmark: data['isBookmark'] as bool?,
      );

  static BookmarkDataStruct? maybeFromMap(dynamic data) => data is Map
      ? BookmarkDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'isBookmark': _isBookmark,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'isBookmark': serializeParam(
          _isBookmark,
          ParamType.bool,
        ),
      }.withoutNulls;

  static BookmarkDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookmarkDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        isBookmark: deserializeParam(
          data['isBookmark'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'BookmarkDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookmarkDataStruct &&
        id == other.id &&
        isBookmark == other.isBookmark;
  }

  @override
  int get hashCode => const ListEquality().hash([id, isBookmark]);
}

BookmarkDataStruct createBookmarkDataStruct({
  int? id,
  bool? isBookmark,
}) =>
    BookmarkDataStruct(
      id: id,
      isBookmark: isBookmark,
    );
