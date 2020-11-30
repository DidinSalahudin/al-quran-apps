import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/domain/surah/surah_data.dart';
// import 'package:quran_app/domain/surah/surah_interface.dart';
// import 'package:quran_app/infrastructure/models/surah/surah_model.dart';

class SurahRepository {
  Future<Either<String, SurahResponse>> getSurah() async {
    try {
      String response = await rootBundle
          .loadString('lib/infrastructure/data/surah-info.json');
      // print(response);
      final data = SurahResponse.fromJson(json.decode(response));
      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
}

// class SurahRepository {
//   Future<Either<String, SurahInfoResultData>> getAllSurah() async {
//     try {
//       String response = await rootBundle
//           .loadString('lib/infrastructure/data/surah-info.json');
//       final surahModel =
//           SurahInfoResultData.fromJson(jsonDecode(response)['surah_info']);
//       return right(surahModel);
//     } catch (e) {
//       return left(e.toString());
//     }
//   }
// }
