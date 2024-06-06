// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataStruct extends BaseStruct {
  ProductDataStruct({
    double? normalPrice,
    double? specialPrice,
    int? isBookmark,
    int? id,
  })  : _normalPrice = normalPrice,
        _specialPrice = specialPrice,
        _isBookmark = isBookmark,
        _id = id;

  // "normal_price" field.
  double? _normalPrice;
  double get normalPrice => _normalPrice ?? 0.0;
  set normalPrice(double? val) => _normalPrice = val;
  void incrementNormalPrice(double amount) =>
      _normalPrice = normalPrice + amount;
  bool hasNormalPrice() => _normalPrice != null;

  // "special_price" field.
  double? _specialPrice;
  double get specialPrice => _specialPrice ?? 0.0;
  set specialPrice(double? val) => _specialPrice = val;
  void incrementSpecialPrice(double amount) =>
      _specialPrice = specialPrice + amount;
  bool hasSpecialPrice() => _specialPrice != null;

  // "is_bookmark" field.
  int? _isBookmark;
  int get isBookmark => _isBookmark ?? 0;
  set isBookmark(int? val) => _isBookmark = val;
  void incrementIsBookmark(int amount) => _isBookmark = isBookmark + amount;
  bool hasIsBookmark() => _isBookmark != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static ProductDataStruct fromMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        normalPrice: castToType<double>(data['normal_price']),
        specialPrice: castToType<double>(data['special_price']),
        isBookmark: castToType<int>(data['is_bookmark']),
        id: castToType<int>(data['id']),
      );

  static ProductDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'normal_price': _normalPrice,
        'special_price': _specialPrice,
        'is_bookmark': _isBookmark,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'normal_price': serializeParam(
          _normalPrice,
          ParamType.double,
        ),
        'special_price': serializeParam(
          _specialPrice,
          ParamType.double,
        ),
        'is_bookmark': serializeParam(
          _isBookmark,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        normalPrice: deserializeParam(
          data['normal_price'],
          ParamType.double,
          false,
        ),
        specialPrice: deserializeParam(
          data['special_price'],
          ParamType.double,
          false,
        ),
        isBookmark: deserializeParam(
          data['is_bookmark'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDataStruct &&
        normalPrice == other.normalPrice &&
        specialPrice == other.specialPrice &&
        isBookmark == other.isBookmark &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([normalPrice, specialPrice, isBookmark, id]);
}

ProductDataStruct createProductDataStruct({
  double? normalPrice,
  double? specialPrice,
  int? isBookmark,
  int? id,
}) =>
    ProductDataStruct(
      normalPrice: normalPrice,
      specialPrice: specialPrice,
      isBookmark: isBookmark,
      id: id,
    );
