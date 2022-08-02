import 'package:json_annotation/json_annotation.dart';

/// {@template part_name}
/// Название времени суток.
/// {@endtemplate}
enum PartName {
  /// ночь
  @JsonValue('night')
  night,

  /// утро
  @JsonValue('morning')
  morning,

  /// день
  @JsonValue('day')
  day,

  /// вечер
  @JsonValue('evening')
  evening,
}
