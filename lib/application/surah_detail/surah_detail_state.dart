part of 'surah_detail_bloc.dart';

@freezed
abstract class SurahDetailState with _$SurahDetailState {
  factory SurahDetailState.initial() = _Initial;
  factory SurahDetailState.surahDetailDataOption({
    @required bool onLoading,
    @required Option<Either<String, SurahDetailDataResultData>> dataSurahDetail,
  }) = _SurahDetailDataOption;
}
