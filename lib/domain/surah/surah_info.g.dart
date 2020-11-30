// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahInfoResultData _$_$SurahInfoResultDataFromJson(
    Map<String, dynamic> json) {
  return _$SurahInfoResultData(
    json['translation'] as String,
    json['arabic'] as String,
    json['latin'] as String,
    json['ayah_count'] as int,
    json['index'] as int,
    json['opening'] as String,
    json['closing'] as String,
  );
}

Map<String, dynamic> _$_$SurahInfoResultDataToJson(
        _$SurahInfoResultData instance) =>
    <String, dynamic>{
      'translation': instance.translation,
      'arabic': instance.arabic,
      'latin': instance.latin,
      'ayah_count': instance.ayahCount,
      'index': instance.index,
      'opening': instance.opening,
      'closing': instance.closing,
    };
