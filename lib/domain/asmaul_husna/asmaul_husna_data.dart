import 'package:freezed_annotation/freezed_annotation.dart';

part 'asmaul_husna_data.freezed.dart';
part 'asmaul_husna_data.g.dart';

@freezed
abstract class AsmaulHusnaData with _$AsmaulHusnaData {
  factory AsmaulHusnaData.asmaulHusnaDataResultData(
    String index,
    String latin,
    String arabic,
    @JsonKey(name: "translation_id") String translationId,
    @JsonKey(name: "translation_en") String translationEn,
  ) = AsmaulHusnaDataResultData;

  factory AsmaulHusnaData.fromJson(Map<String, dynamic> json) =>
      _$AsmaulHusnaDataFromJson(json);
}
