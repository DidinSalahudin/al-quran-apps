import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/domain/doa_harian/doa_harian_data.dart';

part 'doa_harian.freezed.dart';
part 'doa_harian.g.dart';

@freezed
abstract class DoaHarian with _$DoaHarian {
  factory DoaHarian.doaHarianReponse(
    List<DoaHarianDataResultData> data,
  ) = DoaHarianResponse;

  factory DoaHarian.fromJson(Map<String, dynamic> json) =>
      _$DoaHarianFromJson(json);
}
