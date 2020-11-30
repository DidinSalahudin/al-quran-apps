import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/domain/asmaul_husna/asmaul_husna.dart';

class AsmaulHusnaRepository {
  Future<Either<String, AsmaulHusnaResponse>> getAsmaulHusna() async {
    try {
      String response = await rootBundle
          .loadString('lib/infrastructure/data/asmaul-husna.json');
      final data = AsmaulHusnaResponse.fromJson(json.decode(response));
      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
}
