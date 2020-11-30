import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/domain/surah/surah_info.dart';

part 'surah_data.freezed.dart';
part 'surah_data.g.dart';

@freezed
abstract class SurahData with _$SurahData {
  factory SurahData.surahResponse(
    @JsonKey(name: "surah_info") List<SurahInfoResultData> surahInfo,
  ) = SurahResponse;

  factory SurahData.fromJson(Map<String, dynamic> json) =>
      _$SurahDataFromJson(json);
}
