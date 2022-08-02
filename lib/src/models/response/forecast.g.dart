// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
      json['date'] as String?,
      json['date_ts'] as int?,
      json['week'] as int?,
      json['sunrise'] as String?,
      json['sunset'] as String?,
      json['moon_code'] as int?,
      json['moon_text'] as String?,
      (json['parts'] as List<dynamic>?)
          ?.map((e) => Part.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'date': instance.date,
      'date_ts': instance.dateTs,
      'week': instance.week,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moon_code': instance.moonCode,
      'moon_text': instance.moonText,
      'parts': instance.parts,
    };
