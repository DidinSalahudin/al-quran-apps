// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahResponse _$_$SurahResponseFromJson(Map<String, dynamic> json) {
  return _$SurahResponse(
    (json['surah_info'] as List)
        ?.map((e) => e == null
            ? null
            : SurahInfoResultData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$SurahResponseToJson(_$SurahResponse instance) =>
    <String, dynamic>{
      'surah_info': instance.surahInfo,
    };
