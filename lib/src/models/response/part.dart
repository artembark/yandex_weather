import 'package:json_annotation/json_annotation.dart';

part 'part.g.dart';

@JsonSerializable()
class Part {
  Part(
      this.partName,
      this.tempMin,
      this.tempAvg,
      this.tempMax,
      this.tempWater,
      this.windSpeed,
      this.windGust,
      this.windDir,
      this.pressureMm,
      this.pressurePa,
      this.humidity,
      this.precMm,
      this.precProb,
      this.precPeriod,
      this.icon,
      this.condition,
      this.feelsLike,
      this.daytime,
      this.polar);

  String? partName;
  double? tempMin;
  double? tempAvg;
  double? tempMax;
  double? tempWater;
  double? windSpeed;
  double? windGust;
  String? windDir;
  double? pressureMm;
  double? pressurePa;
  double? humidity;
  double? precMm;
  double? precProb;
  double? precPeriod;
  String? icon;
  String? condition;
  double? feelsLike;
  String? daytime;
  bool? polar;

  factory Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);
}
