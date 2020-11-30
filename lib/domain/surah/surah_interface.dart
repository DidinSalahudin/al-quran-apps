import 'package:dartz/dartz.dart';
import 'package:quran_app/domain/surah/surah_info.dart';

abstract class SurahInterface {
  Future<Either<String, SurahInfoResultData>> getAllSurah();
}
