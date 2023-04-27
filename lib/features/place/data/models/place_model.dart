import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';

part 'place_model.g.dart';

@JsonSerializable()
class PlaceModel extends Equatable {
  @JsonKey(name: "lokasi", defaultValue: "", disallowNullValue: true)
  final String name;

  @JsonKey(name: "alamat", defaultValue: "", disallowNullValue: true)
  final String address;

  @JsonKey(name: "latitude", defaultValue: "", disallowNullValue: true)
  final String latitude;

  @JsonKey(name: "longitude", defaultValue: "", disallowNullValue: true)
  final String longitude;

  @JsonKey(
      name: "type",
      defaultValue: PlaceTypeEnum.hospital,
      disallowNullValue: true)
  final PlaceTypeEnum type;

  const PlaceModel(
      {required this.address,
      required this.latitude,
      required this.longitude,
      required this.name,
      required this.type});

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);
  Map<String, dynamic> toJson() {
    return _$PlaceModelToJson(this);
  }

  PlaceWithDistanceModel withDistance(double distance) {
    return PlaceWithDistanceModel(
        distance: distance,
        address: address,
        latitude: latitude,
        longitude: longitude,
        name: name,
        type: type);
  }

  LatLng get position {
    return LatLng(double.parse(latitude), double.parse(longitude));
  }

  @override
  List<Object?> get props => [name, address, latitude, longitude, type];
}

class PlaceWithDistanceModel extends PlaceModel {
  final double distance;

  const PlaceWithDistanceModel(
      {required this.distance,
      required super.address,
      required super.latitude,
      required super.longitude,
      required super.name,
      required super.type});
}
