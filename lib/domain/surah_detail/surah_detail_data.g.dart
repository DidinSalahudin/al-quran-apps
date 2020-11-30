// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahDetailDataResultData _$_$SurahDetailDataResultDataFromJson(
    Map<String, dynamic> json) {
  return _$SurahDetailDataResultData(
    json['number'] as String,
    json['name'] as String,
    json['name_latin'] as String,
    json['number_of_ayah'] as String,
    json['text'] as Map<String, dynamic>,
    json['translations'] as Map<String, dynamic>,
    json['tafsir'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$SurahDetailDataResultDataToJson(
        _$SurahDetailDataResultData instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'name_latin': instance.nameLatin,
      'number_of_ayah': instance.numberOfAyah,
      'text': instance.text,
      'translations': instance.translations,
      'tafsir': instance.tafsir,
    };
