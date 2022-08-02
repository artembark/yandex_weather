part of 'request.dart';

/// {@template weather_request}
/// Модель запроса на получение погоды
/// {@endtemplate}
class WeatherRequest {
  /// {@macro weather_request}
  factory WeatherRequest({
    required GeoPoint geoPoint,
    Lang? lang,
  }) =>
      WeatherRequest._(
        geoPoint: geoPoint,
        lang: lang,
      );

  /// Используется для явного указания ключа
  ///
  /// {@macro weather_request}
  factory WeatherRequest.withKey({
    required String apiKey,
    required GeoPoint geoPoint,
    Lang? lang,
  }) =>
      WeatherRequest._(
        apiKey: apiKey,
        geoPoint: geoPoint,
        lang: lang,
      );

  WeatherRequest._({
    required this.geoPoint,
    this.apiKey,
    this.lang,
  });

  /// {@macro geopoint}
  final GeoPoint geoPoint;

  /// Ключ, полученный в Кабинете разработчика
  final String? apiKey;

  /// {@macro lang}
  final Lang? lang;

  Map<String, String> generateHeaders() => <String, String>{
        if (apiKey != null) kApiKeyHeader: apiKey!,
      };

  /// Преобразование модели в json
  Map<String, String> toJson() => <String, String>{
        kLat: geoPoint.latitude.toString(),
        kLon: geoPoint.longitude.toString(),
        if (lang != null) kLang: lang!._toLang(),
      };
}
