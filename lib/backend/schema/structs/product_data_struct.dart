// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataStruct extends BaseStruct {
  ProductDataStruct({
    double? normalPrice,
    double? specialPrice,
    int? isBookmark,
  })  : _normalPrice = normalPrice,
        _specialPrice = specialPrice,
        _isBookmark = isBookmark;

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

  static ProductDataStruct fromMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        normalPrice: castToType<double>(data['normal_price']),
        specialPrice: castToType<double>(data['special_price']),
        isBookmark: castToType<int>(data['is_bookmark']),
      );

  static ProductDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'normal_price': _normalPrice,
        'special_price': _specialPrice,
        'is_bookmark': _isBookmark,
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
      );

  @override
  String toString() => 'ProductDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDataStruct &&
        normalPrice == other.normalPrice &&
        specialPrice == other.specialPrice &&
        isBookmark == other.isBookmark;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([normalPrice, specialPrice, isBookmark]);
}

ProductDataStruct createProductDataStruct({
  double? normalPrice,
  double? specialPrice,
  int? isBookmark,
}) =>
    ProductDataStruct(
      normalPrice: normalPrice,
      specialPrice: specialPrice,
      isBookmark: isBookmark,
    );
