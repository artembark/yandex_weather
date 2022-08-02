import 'package:flutter_test/flutter_test.dart';
import 'package:yandex_weather/yandex_weather.dart';

void main() {
  final YandexWeather weather =
      YandexWeather(apiKey: 'c3f5e79c-0f8e-436a-ace2-08fd06b4e0e7');

  test('response contains same latitude', () async {
    final WeatherResponse weatherResponse = await weather.getWeather(
      WeatherRequest(
        geoPoint: GeoPoint(latitude: 59.938237, longitude: 30.323663),
      ),
    );

    expect(weatherResponse.info?.lat.toString(), '59.938237');
  });
}
