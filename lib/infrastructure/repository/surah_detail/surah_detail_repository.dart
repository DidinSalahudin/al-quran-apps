import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/domain/surah_detail/surah_detail_data.dart';

class SurahDetailRepository {
  Future<Either<String, SurahDetailDataResultData>> getSurahDetail(
      String nomor) async {
    try {
      String response = await rootBundle
          .loadString('lib/infrastructure/data/surah/$nomor.json');
      final data =
          SurahDetailDataResultData.fromJson(json.decode(response)[nomor]);
      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
}
