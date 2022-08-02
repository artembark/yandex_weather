import 'package:json_annotation/json_annotation.dart';
import 'package:yandex_weather/src/models/response/part.dart';

part 'forecast.g.dart';

@JsonSerializable()
class Forecast {
  String? date;
  int? dateTs;
  int? week;
  String? sunrise;
  String? sunset;
  int? moonCode;
  String? moonText;
  List<Part>? parts;

  Forecast(
    this.date,
    this.dateTs,
    this.week,
    this.sunrise,
    this.sunset,
    this.moonCode,
    this.moonText,
    this.parts,
  );

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
