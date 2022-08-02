// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fact _$FactFromJson(Map<String, dynamic> json) => Fact(
      obsTime: json['obs_time'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      tempWater: (json['temp_water'] as num?)?.toDouble(),
      icon: json['icon'] as String?,
      condition: json['condition'] as String?,
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      windDir: json['wind_dir'] as String?,
      pressureMm: (json['pressure_mm'] as num?)?.toDouble(),
      pressurePa: (json['pressure_pa'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      daytime: json['daytime'] as String?,
      polar: json['polar'] as bool?,
      season: json['season'] as String?,
      windGust: (json['wind_gust'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FactToJson(Fact instance) => <String, dynamic>{
      'obs_time': instance.obsTime,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_water': instance.tempWater,
      'icon': instance.icon,
      'condition': instance.condition,
      'wind_speed': instance.windSpeed,
      'wind_dir': instance.windDir,
      'pressure_mm': instance.pressureMm,
      'pressure_pa': instance.pressurePa,
      'humidity': instance.humidity,
      'daytime': instance.daytime,
      'polar': instance.polar,
      'season': instance.season,
      'wind_gust': instance.windGust,
    };
