import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants.dart';
import '../models/models.dart';

/// Запрос на получение погоды
Future<WeatherResponse> getWeather({
  required WeatherRequest request,
  required WeatherResponse Function(Map<String, dynamic> json) response,
  required Error Function(Map<String, dynamic> json) error,
}) async {
  final Completer<WeatherResponse> completer = Completer<WeatherResponse>();
  http
      .get(Uri.https(kApiAuthority, kApiPath, request.toJson()),
          headers: request.generateHeaders())
      .then((http.Response rawResponse) {
        if (rawResponse.statusCode == 200) {
          final dynamic json = jsonDecode(rawResponse.body);
          completer.complete(response(json as Map<String, dynamic>));
        } else if (rawResponse.statusCode >= 400 &&
            rawResponse.statusCode < 500) {
          final dynamic json = jsonDecode(rawResponse.body);

          completer.completeError(error(json as Map<String, dynamic>));
        } else {
          completer.completeError(rawResponse);
        }
      })
      .timeout(kRequestTimeLimit)
      .catchError((Object error) {
        completer.completeError(error);
      });

  return completer.future;
}
