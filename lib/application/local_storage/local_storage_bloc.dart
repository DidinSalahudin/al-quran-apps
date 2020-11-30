import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quran_app/domain/local_storage/local_storage_data.dart';
import 'package:quran_app/presentation/core/utils/constan.dart' as constants;

part 'local_storage_event.dart';
part 'local_storage_state.dart';
part 'local_storage_bloc.freezed.dart';

class LocalStorageBloc extends Bloc<LocalStorageEvent, LocalStorageState> {
  LocalStorageBloc() : super(_Initial());

  @override
  Stream<LocalStorageState> mapEventToState(
    LocalStorageEvent event,
  ) async* {
    yield* event.map(
      getLocalStorageSurah: (e) async* {
        yield LocalStorageState.getLocalStorageSurahOption(
          onLoading: true,
          dataLocalStorageData: none(),
        );

        final namaSurah = await GetStorage().read(constants.NAME_SURAH);
        final noSurah = await GetStorage().read(constants.NO_SURAH);
        final noAyat = await GetStorage().read(constants.NO_AYAT);

        Map<String, dynamic> dataArray = {
          'namaSurah': namaSurah,
          'noSurah': noSurah,
          'noAyat': noAyat,
        };

        if (namaSurah != null && noSurah != null && noAyat != null) {
          final _result = LocalStorageDataResultData.fromJson(dataArray);
          yield LocalStorageState.getLocalStorageSurahOption(
            onLoading: false,
            dataLocalStorageData: some(right(_result)),
          );
        } else {
          yield LocalStorageState.getLocalStorageSurahOption(
            onLoading: false,
            dataLocalStorageData: none(),
          );
        }
      },
      createLocalStorageSurah: (e) async* {
        yield LocalStorageState.ceateLocalStorageSurahOption(
          onLoading: true,
          dataLocalStorageData: none(),
        );
        await GetStorage().write(constants.NAME_SURAH, e.nameSurah);
        await GetStorage().write(constants.NO_SURAH, e.noSurah);
        await GetStorage().write(constants.NO_AYAT, e.noAyat);

        Map<String, dynamic> dataArray = {
          'namaSurah': GetStorage().read(constants.NAME_SURAH),
          'noSurah': GetStorage().read(constants.NO_SURAH),
          'noAyat': GetStorage().read(constants.NO_AYAT),
        };

        final _result = LocalStorageDataResultData.fromJson(dataArray);
        yield LocalStorageState.ceateLocalStorageSurahOption(
          onLoading: false,
          dataLocalStorageData: some(
            right(_result),
          ),
        );
        yield LocalStorageState.getLocalStorageSurahOption(
          onLoading: false,
          dataLocalStorageData: some(
            right(_result),
          ),
        );
      },
    );
  }
}
