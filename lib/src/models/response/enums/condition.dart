import 'package:json_annotation/json_annotation.dart';

/// {@template condition}
/// Код расшифровки погодного описания.
/// {@endtemplate}
enum Condition {
  /// ясно
  @JsonValue('clear')
  clear,

  /// малооблачно
  @JsonValue('partly-cloudy')
  partlyCloudy,

  /// облачно с прояснениями
  @JsonValue('cloudy')
  cloudy,

  /// пасмурно
  @JsonValue('overcast')
  overcast,

  /// морось
  @JsonValue('drizzle')
  drizzle,

  /// небольшой дождь
  @JsonValue('light-rain')
  lightRain,

  /// дождь
  @JsonValue('rain')
  rain,

  /// умеренно сильный дождь
  @JsonValue('moderate-rain')
  moderateRain,

  /// сильный дождь
  @JsonValue('heavy-rain')
  heavyRain,

  /// длительный сильный дождь
  @JsonValue('continuous-heavy-rain')
  continuousHeavyRain,

  /// ливень
  @JsonValue('showers')
  showers,

  /// дождь со снегом
  @JsonValue('wet-snow')
  wetSnow,

  /// небольшой снег
  @JsonValue('light-snow')
  lightSnow,

  /// снег
  @JsonValue('snow')
  snow,

  /// снегопад
  @JsonValue('snow-showers')
  snowShowers,

  /// град
  @JsonValue('hail')
  hail,

  /// гроза
  @JsonValue('thunderstorm')
  thunderstorm,

  /// дождь с грозой
  @JsonValue('thunderstorm-with-rain')
  thunderstormWithRain,

  /// дождь с грозой
  @JsonValue('thunderstorm-with-hail')
  thunderstormWithHail,
}
