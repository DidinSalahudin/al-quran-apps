import 'package:freezed_annotation/freezed_annotation.dart';

part 'doa_harian_data.freezed.dart';
part 'doa_harian_data.g.dart';

@freezed
abstract class DoaHarianData with _$DoaHarianData {
  factory DoaHarianData.doaHarianDataResultData(
    String title,
    String arabic,
    String latin,
    String translation,
  ) = DoaHarianDataResultData;

  factory DoaHarianData.fromJson(Map<String, dynamic> json) =>
      _$DoaHarianDataFromJson(json);
}
