// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherError _$WeatherErrorFromJson(Map<String, dynamic> json) => WeatherError(
      statusCode: json['status_code'] as int?,
      error: json['error'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$WeatherErrorToJson(WeatherError instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'error': instance.error,
      'message': instance.message,
    };
