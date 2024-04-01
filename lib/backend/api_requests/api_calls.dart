import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateFriendCall {
  static Future<ApiCallResponse> call({
    String? first = '',
    String? last = '',
    String? kelas = '',
    int? umur,
  }) async {
    final ffApiRequestBody = '''
{
  "first_name": "$first",
  "last_name": "$last",
  "class": "$kelas",
  "age": $umur
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create friend',
      apiUrl: 'https://sssjkqrsthcpwrvwbdgt.supabase.co/rest/v1/friends',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNzc2prcXJzdGhjcHdydndiZGd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA3NDU5NjcsImV4cCI6MjAyNjMyMTk2N30.4qRLacJeRLpI5PYA-114WwKiL-8__ti-i-31-3896To',
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

class OtpLoginCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "phone": "+60135932043"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'otp login',
      apiUrl: 'https://sssjkqrsthcpwrvwbdgt.supabase.co/auth/v1/otp',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNzc2prcXJzdGhjcHdydndiZGd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA3NDU5NjcsImV4cCI6MjAyNjMyMTk2N30.4qRLacJeRLpI5PYA-114WwKiL-8__ti-i-31-3896To',
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

class VerifyOtpPhoneChangeCall {
  static Future<ApiCallResponse> call({
    String? otp = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "type": "phone_change",
  "phone": "$phone",
  "token": "$otp"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verify otp phone change',
      apiUrl: 'https://sssjkqrsthcpwrvwbdgt.supabase.co/auth/v1/verify',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNzc2prcXJzdGhjcHdydndiZGd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA3NDU5NjcsImV4cCI6MjAyNjMyMTk2N30.4qRLacJeRLpI5PYA-114WwKiL-8__ti-i-31-3896To',
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

class VerifyOtpPhoneChangeCopyCall {
  static Future<ApiCallResponse> call({
    String? otp = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "type": "sms",
  "phone": "$phone",
  "token": "$otp"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verify otp phone change Copy',
      apiUrl: 'https://sssjkqrsthcpwrvwbdgt.supabase.co/auth/v1/verify',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNzc2prcXJzdGhjcHdydndiZGd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA3NDU5NjcsImV4cCI6MjAyNjMyMTk2N30.4qRLacJeRLpI5PYA-114WwKiL-8__ti-i-31-3896To',
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
