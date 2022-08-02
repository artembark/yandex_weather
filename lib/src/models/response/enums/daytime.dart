import 'package:json_annotation/json_annotation.dart';

/// {@template daytime}
/// Светлое или темное время суток.
/// {@endtemplate}
enum DayTime {
  /// светлое время суток
  @JsonValue(d)
  d,

  /// темное время суток
  @JsonValue(n)
  n,
}
