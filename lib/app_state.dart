import 'package:flutter/material.dart';
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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _userData;
  dynamic get userData => _userData;
  set userData(dynamic value) {
    _userData = value;
    prefs.setString('ff_userData', jsonEncode(value));
  }

  dynamic _configData;
  dynamic get configData => _configData;
  set configData(dynamic value) {
    _configData = value;
    prefs.setString('ff_configData', jsonEncode(value));
  }

  String _customerID = '';
  String get customerID => _customerID;
  set customerID(String value) {
    _customerID = value;
    prefs.setString('ff_customerID', value);
  }

  String _api = '';
  String get api => _api;
  set api(String value) {
    _api = value;
    prefs.setString('ff_api', value);
  }

  String _domain = '';
  String get domain => _domain;
  set domain(String value) {
    _domain = value;
    prefs.setString('ff_domain', value);
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
