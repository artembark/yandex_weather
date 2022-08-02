import 'package:json_annotation/json_annotation.dart';

import '../models.dart';
part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  int? now;
  String? nowDt;
  Info? info;
  Fact? fact;
  Forecast? forecast;

  WeatherResponse({this.now, this.nowDt, this.info, this.fact, this.forecast});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
