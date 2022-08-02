import 'package:json_annotation/json_annotation.dart';

/// {@template wind_dir}
/// Направление ветра.
/// {@endtemplate}
enum WindDir {
  /// северо-западное
  @JsonValue('nw')
  nw,

  /// северное
  @JsonValue('n')
  n,

  /// северо-восточное
  @JsonValue('ne')
  ne,

  /// восточное
  @JsonValue('e')
  e,

  /// юго-восточное
  @JsonValue('se')
  se,

  /// южное
  @JsonValue('s')
  s,

  /// юго-западное
  @JsonValue('sw')
  sw,

  /// западное
  @JsonValue('w')
  w,

  /// штиль
  @JsonValue('c')
  c,
}
