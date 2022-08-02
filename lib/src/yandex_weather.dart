import 'models/models.dart';
import 'utils/network_client.dart' as network;

/// {@template yandex_weather}
/// Сервис Яндекс.Погода предоставляет доступ к HTTP API Яндекс погоды.
/// Этот API позволяет определять погоду по гегорафическим координатам.
/// {@endtemplate}
class YandexWeather {
  /// {@macro yandex_weather}
  factory YandexWeather({
    required String apiKey,
  }) {
    return YandexWeather._(apiKey: apiKey);
  }

  /// Используется если модель создается через [WeatherRequest.withKey]
  ///
  /// {@macro yandex_geocode}
  factory YandexWeather.keyless() {
    return YandexWeather._();
  }

  YandexWeather._({
    this.apiKey,
  });

  /// Ключ, полученный в Кабинете разработчика
  final String? apiKey;

  /// Запрос на получение погоды
  Future<WeatherResponse> getWeather(WeatherRequest weatherRequest) {
    final bool checkKey = weatherRequest.apiKey?.isNotEmpty == true;

    if (apiKey?.isEmpty == true) {
      assert(checkKey, 'The key cannot be empty!');
    }

    return network.getWeather(
      request: checkKey
          ? weatherRequest
          : WeatherRequest.withKey(
              apiKey: apiKey!,
              geoPoint: weatherRequest.geoPoint,
              lang: weatherRequest.lang,
            ),
      response: (Map<String, dynamic> response) =>
          WeatherResponse.fromJson(response),
      error: (Map<String, dynamic> error) => WeatherError.fromJson(error),
    );
  }
}
