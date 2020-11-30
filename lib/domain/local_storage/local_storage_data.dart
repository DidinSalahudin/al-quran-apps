import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_storage_data.freezed.dart';
part 'local_storage_data.g.dart';

@freezed
abstract class LocalStorageData with _$LocalStorageData {
  factory LocalStorageData.localStorageDataResultData(
    String namaSurah,
    String noSurah,
    int noAyat,
  ) = LocalStorageDataResultData;

  factory LocalStorageData.fromJson(Map<String, dynamic> json) =>
      _$LocalStorageDataFromJson(json);
}
