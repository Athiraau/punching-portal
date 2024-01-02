import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Punching  Group Code

class PunchingGroup {
  static String baseUrl = 'https://uatapp.manappuram.net';
  static Map<String, String> headers = {
    'Content-Type': 'application/json; charset=utf-8',
  };
  static EmployeeCodeCall employeeCodeCall = EmployeeCodeCall();
}

class EmployeeCodeCall {
  Future<ApiCallResponse> call({
    String? employeeByCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'EmployeeCode',
      apiUrl:
          '${PunchingGroup.baseUrl}/PunchApi/api/employee/EmployeeByCode/${employeeByCode}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Punching  Group Code

class EmployeeByCodeCall {
  static Future<ApiCallResponse> call({
    int? employeeByCode,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'EmployeeByCode',
      apiUrl:
          'https://uatapp.manappuram.net/PunchApi/api/employee/EmployeeByCode/${employeeByCode}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PunchingShiftCall {
  static Future<ApiCallResponse> call({
    int? employeeByCode,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PunchingShift',
      apiUrl:
          'https://uatapp.manappuram.net/PunchApi/api/employee/EmployeeByCode/${employeeByCode}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
