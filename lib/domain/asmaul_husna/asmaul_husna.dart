import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/domain/asmaul_husna/asmaul_husna_data.dart';

part 'asmaul_husna.freezed.dart';
part 'asmaul_husna.g.dart';

@freezed
abstract class AsmaulHusna with _$AsmaulHusna {
  factory AsmaulHusna.asmaulHusnaReponse(
    List<AsmaulHusnaDataResultData> data,
  ) = AsmaulHusnaResponse;

  factory AsmaulHusna.fromJson(Map<String, dynamic> json) =>
      _$AsmaulHusnaFromJson(json);
}
