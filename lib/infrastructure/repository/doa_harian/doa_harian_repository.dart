import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/domain/doa_harian/doa_harian.dart';

class DoaHarianRepository {
  Future<Either<String, DoaHarianResponse>> getDoaHarian() async {
    try {
      String response =
          await rootBundle.loadString('lib/infrastructure/data/daily-doa.json');
      final data = DoaHarianResponse.fromJson(json.decode(response));
      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
}
