import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/domain/surah_detail/surah_detail_data.dart';
import 'package:quran_app/infrastructure/repository/surah_detail/surah_detail_repository.dart';

part 'surah_detail_event.dart';
part 'surah_detail_state.dart';
part 'surah_detail_bloc.freezed.dart';

class SurahDetailBloc extends Bloc<SurahDetailEvent, SurahDetailState> {
  SurahDetailBloc() : super(_Initial());

  SurahDetailRepository _surahDetailRepository = SurahDetailRepository();

  @override
  Stream<SurahDetailState> mapEventToState(
    SurahDetailEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield SurahDetailState.surahDetailDataOption(
          onLoading: true,
          dataSurahDetail: none(),
        );
        final _result = await _surahDetailRepository.getSurahDetail(e.nomor);
        yield SurahDetailState.surahDetailDataOption(
          onLoading: false,
          dataSurahDetail: some(_result),
        );
      },
    );
  }
}
