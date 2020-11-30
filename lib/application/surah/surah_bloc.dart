import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
// import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/domain/surah/surah_data.dart';
// import 'package:quran_app/domain/surah/surah_info.dart';
// import 'package:quran_app/domain/surah/surah_info.dart';
// import 'package:quran_app/domain/surah/surah_interface.dart';
import 'package:quran_app/infrastructure/repository/surah/surah_repository.dart';
// import 'package:quran_app/infrastructure/models/surah/surah_model.dart';
// import 'package:quran_app/infrastructure/repository/surah/surah_repository.dart';

part 'surah_event.dart';
part 'surah_state.dart';
part 'surah_bloc.freezed.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  SurahBloc() : super(SurahState.initial());
  SurahRepository _surahRepository = SurahRepository();
  // SurahRepository _surahRepository = SurahRepository();
  @override
  Stream<SurahState> mapEventToState(
    SurahEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield SurahState.surahDataOption(
          onLoading: true,
          dataSurah: none(),
        );
        final _result = await _surahRepository.getSurah();
        yield SurahState.surahDataOption(
          onLoading: false,
          dataSurah: some(_result),
        );
      },
    );
  }
}
