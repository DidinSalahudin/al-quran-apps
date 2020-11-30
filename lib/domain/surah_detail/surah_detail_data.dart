import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_detail_data.freezed.dart';
part 'surah_detail_data.g.dart';

@freezed
abstract class SurahDetailData with _$SurahDetailData {
  factory SurahDetailData.surahDetailDataResultData(
    String number,
    String name,
    @JsonKey(name: "name_latin") String nameLatin,
    @JsonKey(name: "number_of_ayah") String numberOfAyah,
    Map text,
    Map translations,
    Map tafsir,
  ) = SurahDetailDataResultData;

  factory SurahDetailData.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailDataFromJson(json);
}
