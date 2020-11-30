// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asmaul_husna.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AsmaulHusnaResponse _$_$AsmaulHusnaResponseFromJson(
    Map<String, dynamic> json) {
  return _$AsmaulHusnaResponse(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : AsmaulHusnaDataResultData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$AsmaulHusnaResponseToJson(
        _$AsmaulHusnaResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
