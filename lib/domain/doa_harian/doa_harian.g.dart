// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doa_harian.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoaHarianResponse _$_$DoaHarianResponseFromJson(Map<String, dynamic> json) {
  return _$DoaHarianResponse(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : DoaHarianDataResultData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$DoaHarianResponseToJson(
        _$DoaHarianResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
