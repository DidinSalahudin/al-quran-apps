part of 'asmaul_husna_bloc.dart';

@freezed
abstract class AsmaulHusnaState with _$AsmaulHusnaState {
  const factory AsmaulHusnaState.initial() = _Initial;

  factory AsmaulHusnaState.asmaulHusnaDataOption({
    @required bool onLoading,
    @required Option<Either<String, AsmaulHusnaResponse>> dataAsmaulHusna,
  }) = _AsmaulHusnaDataOption;
}
