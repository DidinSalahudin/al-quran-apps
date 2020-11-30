part of 'local_storage_bloc.dart';

@freezed
abstract class LocalStorageState with _$LocalStorageState {
  const factory LocalStorageState.initial() = _Initial;

  const factory LocalStorageState.getLocalStorageSurahOption({
    @required bool onLoading,
    @required
        Option<Either<String, LocalStorageDataResultData>> dataLocalStorageData,
  }) = _GetLocalStorageSurahOption;

  const factory LocalStorageState.ceateLocalStorageSurahOption({
    @required bool onLoading,
    @required
        Option<Either<String, LocalStorageDataResultData>> dataLocalStorageData,
  }) = _CreateLocalStorageSurahOption;
}
