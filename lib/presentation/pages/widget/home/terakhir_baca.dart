import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/presentation/pages/surah_detail/surah_detail.dart';

class TerakhirDibaca extends StatelessWidget {
  const TerakhirDibaca({
    this.namaSurah,
    this.noSurah,
    this.noAyat,
    Key key,
  }) : super(key: key);

  final String namaSurah;
  final String noSurah;
  final int noAyat;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Terakhir Dibaca',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(SurahDetail(), arguments: noSurah);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  namaSurah,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Ayat No. $noAyat',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
