part of 'surah_detail_bloc.dart';

@freezed
abstract class SurahDetailEvent with _$SurahDetailEvent {
  const factory SurahDetailEvent.getData(String nomor) = _GetData;
}
