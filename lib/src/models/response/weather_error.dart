import 'package:json_annotation/json_annotation.dart';
part 'weather_error.g.dart';

/// {@template error}
/// Модель ошибки
/// {@endtemplate}
@JsonSerializable()
class WeatherError extends Error {
  /// {@macro error}
  WeatherError({
    this.statusCode,
    this.error,
    this.message,
  });

  /// Статус код
  int? statusCode;

  /// Ошибка
  String? error;

  /// Сообщение
  String? message;

  factory WeatherError.fromJson(Map<String, dynamic> json) =>
      _$WeatherErrorFromJson(json);
}
