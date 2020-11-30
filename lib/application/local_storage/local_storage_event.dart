part of 'local_storage_bloc.dart';

@freezed
abstract class LocalStorageEvent with _$LocalStorageEvent {
  const factory LocalStorageEvent.getLocalStorageSurah() =
      _GetLocalStorageSurah;

  const factory LocalStorageEvent.createLocalStorageSurah(
      String nameSurah, String noSurah, int noAyat) = _CreateLocalStorageSurah;
}
