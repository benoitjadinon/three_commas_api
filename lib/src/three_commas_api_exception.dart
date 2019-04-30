import 'dart:convert';

import 'model/error.dart';

/*
HTTP 4XX return codes are used for malformed requests; the issue is on the sender's side.

HTTP 429 return code is used when breaking a request rate limit.

HTTP 418 return code is used when an IP has been auto-banned for continuing to send requests after receiving 429 codes.

HTTP 5XX return codes are used for internal errors; the issue is on 3commas's side.

HTTP 504 return code is used when the API successfully sent the message
*/

class ApiException implements Exception {
  int code = 0;
  String message = null;
  ERROR error;

  ApiException(this.code, this.message) {
    error = ERROR.fromJson(json.decode(message));
  }

  String toString() {
    if (message == null)
      return "ApiException";
    return message;
  }
}