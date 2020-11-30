part of 'doa_harian_bloc.dart';

@freezed
abstract class DoaHarianEvent with _$DoaHarianEvent {
  const factory DoaHarianEvent.getData() = _GetData;
}
