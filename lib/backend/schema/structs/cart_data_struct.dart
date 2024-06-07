// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartDataStruct extends BaseStruct {
  CartDataStruct({
    int? id,
    double? price,
    int? total,
  })  : _id = id,
        _price = price,
        _total = total;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;
  void incrementTotal(int amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  static CartDataStruct fromMap(Map<String, dynamic> data) => CartDataStruct(
        id: castToType<int>(data['id']),
        price: castToType<double>(data['price']),
        total: castToType<int>(data['total']),
      );

  static CartDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'price': _price,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
      }.withoutNulls;

  static CartDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CartDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartDataStruct &&
        id == other.id &&
        price == other.price &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([id, price, total]);
}

CartDataStruct createCartDataStruct({
  int? id,
  double? price,
  int? total,
}) =>
    CartDataStruct(
      id: id,
      price: price,
      total: total,
    );
