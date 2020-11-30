part of 'surah_bloc.dart';

@freezed
abstract class SurahState with _$SurahState {
  factory SurahState.initial() = _Initial;

  factory SurahState.surahDataOption({
    @required bool onLoading,
    @required Option<Either<String, SurahResponse>> dataSurah,
  }) = _SurahDataOption;
}
