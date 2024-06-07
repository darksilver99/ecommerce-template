import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetmainconfigCall {
  static Future<ApiCallResponse> call({
    String? customerID = '1',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_id": "${customerID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getmainconfig',
      apiUrl: 'https://smart.silver-api.com/api/get_config',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? api = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${api}/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProductlistCall {
  static Future<ApiCallResponse> call({
    String? api = '',
    String? rows = '',
    String? start = '',
    String? uid = '',
    String? keyword = '',
    String? ids = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'productlist',
      apiUrl: '${api}/product_list',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'rows': rows,
        'start': start,
        'uid': uid,
        'keyword': keyword,
        'ids': ids,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetconfigCall {
  static Future<ApiCallResponse> call({
    String? api = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getconfig',
      apiUrl: '${api}/get_config',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetpaymentlistCall {
  static Future<ApiCallResponse> call({
    String? api = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getpaymentlist',
      apiUrl: '${api}/get_payment_list',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetaddressCall {
  static Future<ApiCallResponse> call({
    String? api = '',
    String? authorization = '',
    int? uid,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getaddress',
      apiUrl: '${api}/get_address',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateuserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? api = '',
    String? firstName = '',
    String? lastName = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "phone": "${phone}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createuser',
      apiUrl: '${api}/create_user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SetbookmarkCall {
  static Future<ApiCallResponse> call({
    String? api = '',
    String? uid = '',
    String? refId = '',
    String? cmd = 'product',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "${uid}",
  "ref_id": "${refId}",
  "cmd": "${cmd}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'setbookmark',
      apiUrl: '${api}/set_bookmark',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertorderCall {
  static Future<ApiCallResponse> call({
    String? api = '',
    int? uid,
    int? paymentId,
    dynamic? productDataJson,
    String? authorization = '',
  }) async {
    final productData = _serializeJson(productDataJson, true);
    final ffApiRequestBody = '''
{
  "uid": ${uid},
  "payment_id": ${paymentId},
  "product_data": ${productData}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insertorder',
      apiUrl: '${api}/insert_order',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
