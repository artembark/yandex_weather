// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      now: json['now'] as int?,
      nowDt: json['now_dt'] as String?,
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      fact: json['fact'] == null
          ? null
          : Fact.fromJson(json['fact'] as Map<String, dynamic>),
      forecast: json['forecast'] == null
          ? null
          : Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'now': instance.now,
      'now_dt': instance.nowDt,
      'info': instance.info,
      'fact': instance.fact,
      'forecast': instance.forecast,
    };
