// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartDataStruct extends BaseStruct {
  CartDataStruct({
    String? id,
    double? price,
    String? uid,
    int? total,
  })  : _id = id,
        _price = price,
        _uid = uid,
        _total = total;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;
  void incrementTotal(int amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  static CartDataStruct fromMap(Map<String, dynamic> data) => CartDataStruct(
        id: data['id'] as String?,
        price: castToType<double>(data['price']),
        uid: data['uid'] as String?,
        total: castToType<int>(data['total']),
      );

  static CartDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'price': _price,
        'uid': _uid,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
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
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
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
        uid == other.uid &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([id, price, uid, total]);
}

CartDataStruct createCartDataStruct({
  String? id,
  double? price,
  String? uid,
  int? total,
}) =>
    CartDataStruct(
      id: id,
      price: price,
      uid: uid,
      total: total,
    );
