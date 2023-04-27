// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const [
      'lokasi',
      'alamat',
      'latitude',
      'longitude',
      'type'
    ],
  );
  return PlaceModel(
    address: json['alamat'] as String? ?? '',
    latitude: json['latitude'] as String? ?? '',
    longitude: json['longitude'] as String? ?? '',
    name: json['lokasi'] as String? ?? '',
    type: $enumDecodeNullable(_$PlaceTypeEnumEnumMap, json['type']) ??
        PlaceTypeEnum.hospital,
  );
}

Map<String, dynamic> _$PlaceModelToJson(PlaceModel instance) =>
    <String, dynamic>{
      'lokasi': instance.name,
      'alamat': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'type': _$PlaceTypeEnumEnumMap[instance.type]!,
    };

const _$PlaceTypeEnumEnumMap = {
  PlaceTypeEnum.hospital: 'hospital',
  PlaceTypeEnum.restaurant: 'restaurant',
  PlaceTypeEnum.both: 'both',
};
