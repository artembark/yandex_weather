import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@JsonSerializable()
class Fact {
  int? obsTime;
  double? temp;
  double? feelsLike;
  double? tempWater;
  String? icon;
  String? condition;
  double? windSpeed;
  String? windDir;
  double? pressureMm;
  double? pressurePa;
  double? humidity;
  String? daytime;
  bool? polar;
  String? season;
  double? windGust;

  Fact({
    this.obsTime,
    this.temp,
    this.feelsLike,
    this.tempWater,
    this.icon,
    this.condition,
    this.windSpeed,
    this.windDir,
    this.pressureMm,
    this.pressurePa,
    this.humidity,
    this.daytime,
    this.polar,
    this.season,
    this.windGust,
  });

  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);
}
