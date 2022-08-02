import 'package:json_annotation/json_annotation.dart';

/// {@template moon_text}
/// Текстовый код для фазы Луны.
/// {@endtemplate}
enum MoonText {
  /// полнолуние
  @JsonValue('moon-code-0')
  moonCode0,

  /// убывающая луна
  @JsonValue('moon-code-1')
  moonCode1,

  /// убывающая луна
  @JsonValue('moon-code-2')
  moonCode2,

  /// убывающая луна
  @JsonValue('moon-code-3')
  moonCode3,

  /// последняя четверть
  @JsonValue('moon-code-4')
  moonCode4,

  /// убывающая луна
  @JsonValue('moon-code-5')
  moonCode5,

  /// убывающая луна
  @JsonValue('moon-code-6')
  moonCode6,

  /// убывающая луна
  @JsonValue('moon-code-7')
  moonCode7,

  /// новолуние
  @JsonValue('moon-code-8')
  moonCode8,

  /// растущая луна
  @JsonValue('moon-code-9')
  moonCode9,

  /// растущая луна
  @JsonValue('moon-code-10')
  moonCode10,

  /// растущая луна
  @JsonValue('moon-code-11')
  moonCode11,

  /// первая четверть
  @JsonValue('moon-code-12')
  moonCode12,

  /// растущая луна
  @JsonValue('moon-code-13')
  moonCode13,

  /// растущая луна
  @JsonValue('moon-code-14')
  moonCode14,

  /// растущая луна
  @JsonValue('moon-code-15')
  moonCode15,
}
