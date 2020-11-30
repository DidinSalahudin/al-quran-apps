import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/domain/doa_harian/doa_harian.dart';
import 'package:quran_app/infrastructure/repository/doa_harian/doa_harian_repository.dart';

part 'doa_harian_event.dart';
part 'doa_harian_state.dart';
part 'doa_harian_bloc.freezed.dart';

class DoaHarianBloc extends Bloc<DoaHarianEvent, DoaHarianState> {
  DoaHarianBloc() : super(_Initial());

  DoaHarianRepository _doaHarianRepository = DoaHarianRepository();

  @override
  Stream<DoaHarianState> mapEventToState(
    DoaHarianEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield DoaHarianState.doaHarianDataOption(
          onLoading: true,
          dataDoaHarian: none(),
        );
        final _result = await _doaHarianRepository.getDoaHarian();
        yield DoaHarianState.doaHarianDataOption(
          onLoading: false,
          dataDoaHarian: some(_result),
        );
      },
    );
  }
}
