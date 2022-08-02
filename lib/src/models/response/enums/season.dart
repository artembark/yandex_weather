import 'package:json_annotation/json_annotation.dart';

/// {@template season}
/// Время года в данном населенном пункте.
/// {@endtemplate}
enum Season {
  /// лето
  @JsonValue('summer')
  summer,

  /// осень
  @JsonValue('autumn')
  autumn,

  /// зима
  @JsonValue('winter')
  winter,

  /// весна
  @JsonValue('spring')
  spring,
}
