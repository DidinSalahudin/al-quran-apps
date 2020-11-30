import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_info.freezed.dart';
part 'surah_info.g.dart';

@freezed
abstract class SurahInfo with _$SurahInfo {
  factory SurahInfo.surahInfoResultData(
    String translation,
    String arabic,
    String latin,
    @JsonKey(name: "ayah_count") int ayahCount,
    int index,
    String opening,
    String closing,
  ) = SurahInfoResultData;

  factory SurahInfo.fromJson(Map<String, dynamic> json) =>
      _$SurahInfoFromJson(json);
}
