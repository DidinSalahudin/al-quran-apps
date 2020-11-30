import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/domain/asmaul_husna/asmaul_husna.dart';
import 'package:quran_app/infrastructure/repository/asmaul_husna/asmaul_husna_repository.dart';

part 'asmaul_husna_event.dart';
part 'asmaul_husna_state.dart';
part 'asmaul_husna_bloc.freezed.dart';

class AsmaulHusnaBloc extends Bloc<AsmaulHusnaEvent, AsmaulHusnaState> {
  AsmaulHusnaBloc() : super(_Initial());

  AsmaulHusnaRepository _asmaulHusnaRepository = AsmaulHusnaRepository();

  @override
  Stream<AsmaulHusnaState> mapEventToState(
    AsmaulHusnaEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield AsmaulHusnaState.asmaulHusnaDataOption(
          onLoading: true,
          dataAsmaulHusna: none(),
        );
        final _result = await _asmaulHusnaRepository.getAsmaulHusna();
        yield AsmaulHusnaState.asmaulHusnaDataOption(
          onLoading: false,
          dataAsmaulHusna: some(_result),
        );
      },
    );
  }
}
