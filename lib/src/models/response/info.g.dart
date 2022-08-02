// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      json['url'] as String?,
      (json['lat'] as num?)?.toDouble(),
      (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'url': instance.url,
      'lat': instance.lat,
      'lon': instance.lon,
    };
