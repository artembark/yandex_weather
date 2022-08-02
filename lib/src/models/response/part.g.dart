// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Part _$PartFromJson(Map<String, dynamic> json) => Part(
      json['part_name'] as String?,
      (json['temp_min'] as num?)?.toDouble(),
      (json['temp_avg'] as num?)?.toDouble(),
      (json['temp_max'] as num?)?.toDouble(),
      (json['temp_water'] as num?)?.toDouble(),
      (json['wind_speed'] as num?)?.toDouble(),
      (json['wind_gust'] as num?)?.toDouble(),
      json['wind_dir'] as String?,
      (json['pressure_mm'] as num?)?.toDouble(),
      (json['pressure_pa'] as num?)?.toDouble(),
      (json['humidity'] as num?)?.toDouble(),
      (json['prec_mm'] as num?)?.toDouble(),
      (json['prec_prob'] as num?)?.toDouble(),
      (json['prec_period'] as num?)?.toDouble(),
      json['icon'] as String?,
      json['condition'] as String?,
      (json['feels_like'] as num?)?.toDouble(),
      json['daytime'] as String?,
      json['polar'] as bool?,
    );

Map<String, dynamic> _$PartToJson(Part instance) => <String, dynamic>{
      'part_name': instance.partName,
      'temp_min': instance.tempMin,
      'temp_avg': instance.tempAvg,
      'temp_max': instance.tempMax,
      'temp_water': instance.tempWater,
      'wind_speed': instance.windSpeed,
      'wind_gust': instance.windGust,
      'wind_dir': instance.windDir,
      'pressure_mm': instance.pressureMm,
      'pressure_pa': instance.pressurePa,
      'humidity': instance.humidity,
      'prec_mm': instance.precMm,
      'prec_prob': instance.precProb,
      'prec_period': instance.precPeriod,
      'icon': instance.icon,
      'condition': instance.condition,
      'feels_like': instance.feelsLike,
      'daytime': instance.daytime,
      'polar': instance.polar,
    };
