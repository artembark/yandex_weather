part of 'request.dart';

/// {@template geo_point}
/// Географические координаты местоположения.
/// {@endtemplate}
class GeoPoint {
  /// {@macro geo_point}
  GeoPoint({
    required this.latitude,
    required this.longitude,
  });

  /// Широта
  final double latitude;

  /// Долгота
  final double longitude;
}
