import 'package:json_annotation/json_annotation.dart';
part 'info.g.dart';

@JsonSerializable()
class Info {
  Info(
    this.url,
    this.lat,
    this.lon,
  );

  String? url;
  double? lat;
  double? lon;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
