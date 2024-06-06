// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookmarkDataStruct extends BaseStruct {
  BookmarkDataStruct({
    bool? isBookmark,
    String? refID,
  })  : _isBookmark = isBookmark,
        _refID = refID;

  // "isBookmark" field.
  bool? _isBookmark;
  bool get isBookmark => _isBookmark ?? false;
  set isBookmark(bool? val) => _isBookmark = val;
  bool hasIsBookmark() => _isBookmark != null;

  // "refID" field.
  String? _refID;
  String get refID => _refID ?? '';
  set refID(String? val) => _refID = val;
  bool hasRefID() => _refID != null;

  static BookmarkDataStruct fromMap(Map<String, dynamic> data) =>
      BookmarkDataStruct(
        isBookmark: data['isBookmark'] as bool?,
        refID: data['refID'] as String?,
      );

  static BookmarkDataStruct? maybeFromMap(dynamic data) => data is Map
      ? BookmarkDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isBookmark': _isBookmark,
        'refID': _refID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isBookmark': serializeParam(
          _isBookmark,
          ParamType.bool,
        ),
        'refID': serializeParam(
          _refID,
          ParamType.String,
        ),
      }.withoutNulls;

  static BookmarkDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookmarkDataStruct(
        isBookmark: deserializeParam(
          data['isBookmark'],
          ParamType.bool,
          false,
        ),
        refID: deserializeParam(
          data['refID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BookmarkDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookmarkDataStruct &&
        isBookmark == other.isBookmark &&
        refID == other.refID;
  }

  @override
  int get hashCode => const ListEquality().hash([isBookmark, refID]);
}

BookmarkDataStruct createBookmarkDataStruct({
  bool? isBookmark,
  String? refID,
}) =>
    BookmarkDataStruct(
      isBookmark: isBookmark,
      refID: refID,
    );
