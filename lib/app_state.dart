import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_userData')) {
        try {
          _userData = jsonDecode(prefs.getString('ff_userData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_configData')) {
        try {
          _configData = jsonDecode(prefs.getString('ff_configData') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _customerID = prefs.getString('ff_customerID') ?? _customerID;
    });
    _safeInit(() {
      _api = prefs.getString('ff_api') ?? _api;
    });
    _safeInit(() {
      _domain = prefs.getString('ff_domain') ?? _domain;
    });
    _safeInit(() {
      _cartDataList = prefs
              .getStringList('ff_cartDataList')
              ?.map((x) {
                try {
                  return CartDataStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cartDataList;
    });
    _safeInit(() {
      _totalProductInCart =
          prefs.getInt('ff_totalProductInCart') ?? _totalProductInCart;
    });
    _safeInit(() {
      _totalPriceInCart =
          prefs.getDouble('ff_totalPriceInCart') ?? _totalPriceInCart;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _userData;
  dynamic get userData => _userData;
  set userData(dynamic _value) {
    _userData = _value;
    prefs.setString('ff_userData', jsonEncode(_value));
  }

  dynamic _configData;
  dynamic get configData => _configData;
  set configData(dynamic _value) {
    _configData = _value;
    prefs.setString('ff_configData', jsonEncode(_value));
  }

  String _customerID = '1';
  String get customerID => _customerID;
  set customerID(String _value) {
    _customerID = _value;
    prefs.setString('ff_customerID', _value);
  }

  String _api = '';
  String get api => _api;
  set api(String _value) {
    _api = _value;
    prefs.setString('ff_api', _value);
  }

  String _domain = '';
  String get domain => _domain;
  set domain(String _value) {
    _domain = _value;
    prefs.setString('ff_domain', _value);
  }

  List<BookmarkDataStruct> _bookmarkList = [];
  List<BookmarkDataStruct> get bookmarkList => _bookmarkList;
  set bookmarkList(List<BookmarkDataStruct> _value) {
    _bookmarkList = _value;
  }

  void addToBookmarkList(BookmarkDataStruct _value) {
    _bookmarkList.add(_value);
  }

  void removeFromBookmarkList(BookmarkDataStruct _value) {
    _bookmarkList.remove(_value);
  }

  void removeAtIndexFromBookmarkList(int _index) {
    _bookmarkList.removeAt(_index);
  }

  void updateBookmarkListAtIndex(
    int _index,
    BookmarkDataStruct Function(BookmarkDataStruct) updateFn,
  ) {
    _bookmarkList[_index] = updateFn(_bookmarkList[_index]);
  }

  void insertAtIndexInBookmarkList(int _index, BookmarkDataStruct _value) {
    _bookmarkList.insert(_index, _value);
  }

  List<CartDataStruct> _cartDataList = [];
  List<CartDataStruct> get cartDataList => _cartDataList;
  set cartDataList(List<CartDataStruct> _value) {
    _cartDataList = _value;
    prefs.setStringList(
        'ff_cartDataList', _value.map((x) => x.serialize()).toList());
  }

  void addToCartDataList(CartDataStruct _value) {
    _cartDataList.add(_value);
    prefs.setStringList(
        'ff_cartDataList', _cartDataList.map((x) => x.serialize()).toList());
  }

  void removeFromCartDataList(CartDataStruct _value) {
    _cartDataList.remove(_value);
    prefs.setStringList(
        'ff_cartDataList', _cartDataList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCartDataList(int _index) {
    _cartDataList.removeAt(_index);
    prefs.setStringList(
        'ff_cartDataList', _cartDataList.map((x) => x.serialize()).toList());
  }

  void updateCartDataListAtIndex(
    int _index,
    CartDataStruct Function(CartDataStruct) updateFn,
  ) {
    _cartDataList[_index] = updateFn(_cartDataList[_index]);
    prefs.setStringList(
        'ff_cartDataList', _cartDataList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCartDataList(int _index, CartDataStruct _value) {
    _cartDataList.insert(_index, _value);
    prefs.setStringList(
        'ff_cartDataList', _cartDataList.map((x) => x.serialize()).toList());
  }

  int _totalProductInCart = 0;
  int get totalProductInCart => _totalProductInCart;
  set totalProductInCart(int _value) {
    _totalProductInCart = _value;
    prefs.setInt('ff_totalProductInCart', _value);
  }

  double _totalPriceInCart = 0.0;
  double get totalPriceInCart => _totalPriceInCart;
  set totalPriceInCart(double _value) {
    _totalPriceInCart = _value;
    prefs.setDouble('ff_totalPriceInCart', _value);
  }

  String _orderAddress = '';
  String get orderAddress => _orderAddress;
  set orderAddress(String _value) {
    _orderAddress = _value;
  }

  String _orderReceiver = '';
  String get orderReceiver => _orderReceiver;
  set orderReceiver(String _value) {
    _orderReceiver = _value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
