part of 'doa_harian_bloc.dart';

@freezed
abstract class DoaHarianState with _$DoaHarianState {
  const factory DoaHarianState.initial() = _Initial;

  factory DoaHarianState.doaHarianDataOption({
    @required bool onLoading,
    @required Option<Either<String, DoaHarianResponse>> dataDoaHarian,
  }) = _DoaHarianDataOption;
}
