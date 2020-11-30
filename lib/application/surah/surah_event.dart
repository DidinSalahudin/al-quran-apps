part of 'surah_bloc.dart';

@freezed
abstract class SurahEvent with _$SurahEvent {
  const factory SurahEvent.getData() = _GetData;
}
