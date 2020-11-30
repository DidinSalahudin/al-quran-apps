import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/presentation/pages/surah_detail/surah_detail.dart';

class DataSearch extends SearchDelegate<String> {
  final listSurah = [
    {
      "latin": "Al-Fatihah",
      "index": 1,
    },
    {
      "latin": "Al-Baqarah",
      "index": 2,
    },
    {
      "latin": "Ali 'Imran",
      "index": 3,
    },
    {
      "latin": "An-Nisa'",
      "index": 4,
    },
    {
      "latin": "Al-Ma'idah",
      "index": 5,
    },
    {
      "latin": "Al-An'am",
      "index": 6,
    },
    {
      "latin": "Al-A'raf",
      "index": 7,
    },
    {
      "latin": "Al-Anfal",
      "index": 8,
    },
    {
      "latin": "At-Taubah",
      "index": 9,
    },
    {
      "latin": "Yunus",
      "index": 10,
    },
    {
      "latin": "Hud",
      "index": 11,
    },
    {
      "latin": "Yusuf",
      "index": 12,
    },
    {
      "latin": "Ar-Ra'd",
      "index": 13,
    },
    {
      "latin": "Ibrahim",
      "index": 14,
    },
    {
      "latin": "Al-Hijr",
      "index": 15,
    },
    {
      "latin": "An-Nahl",
      "index": 16,
    },
    {
      "latin": "Al-Isra'",
      "index": 17,
    },
    {
      "latin": "Al-Kahf",
      "index": 18,
    },
    {
      "latin": "Maryam",
      "index": 19,
    },
    {
      "latin": "Taha",
      "index": 20,
    },
    {
      "latin": "Al-Anbiya'",
      "index": 21,
    },
    {
      "latin": "Al-Hajj",
      "index": 22,
    },
    {
      "latin": "Al-Mu'minun",
      "index": 23,
    },
    {
      "latin": "An-Nur",
      "index": 24,
    },
    {
      "latin": "Al-Furqan",
      "index": 25,
    },
    {
      "latin": "Asy-Syu'ara'",
      "index": 26,
    },
    {
      "latin": "An-Naml",
      "index": 27,
    },
    {
      "latin": "Al-Qasas",
      "index": 28,
    },
    {
      "latin": "Al-'Ankabut",
      "index": 29,
    },
    {
      "latin": "Ar-Rum",
      "index": 30,
    },
    {
      "latin": "Luqman",
      "index": 31,
    },
    {
      "latin": "As-Sajdah",
      "index": 32,
    },
    {
      "latin": "Al-Ahzab",
      "index": 33,
    },
    {
      "latin": "Saba'",
      "index": 34,
    },
    {
      "latin": "Fatir",
      "index": 35,
    },
    {
      "latin": "Yasin",
      "index": 36,
    },
    {
      "latin": "As-Saffat",
      "index": 37,
    },
    {
      "latin": "Sad",
      "index": 38,
    },
    {
      "latin": "Az-Zumar",
      "index": 39,
    },
    {
      "latin": "Gafir",
      "index": 40,
    },
    {
      "latin": "Fussilat",
      "index": 41,
    },
    {
      "latin": "Asy-Syura",
      "index": 42,
    },
    {
      "latin": "Az-Zukhruf",
      "index": 43,
    },
    {
      "latin": "Ad-Dukhan",
      "index": 44,
    },
    {
      "latin": "Al-Jasiyah",
      "index": 45,
    },
    {
      "latin": "Al-Ahqaf",
      "index": 46,
    },
    {
      "latin": "Muhammad",
      "index": 47,
    },
    {
      "latin": "Al-Fath",
      "index": 48,
    },
    {
      "latin": "Al-Hujurat",
      "index": 49,
    },
    {
      "latin": "Qaf",
      "index": 50,
    },
    {
      "latin": "Az-Zariyat",
      "index": 51,
    },
    {
      "latin": "At-Tur",
      "index": 52,
    },
    {
      "latin": "An-Najm",
      "index": 53,
    },
    {
      "latin": "Al-Qamar",
      "index": 54,
    },
    {
      "latin": "Ar-Rahman",
      "index": 55,
    },
    {
      "latin": "Al-Waqi'ah",
      "index": 56,
    },
    {
      "latin": "Al-Hadid",
      "index": 57,
    },
    {
      "latin": "Al-Mujadalah",
      "index": 58,
    },
    {
      "latin": "Al-Hasyr",
      "index": 59,
    },
    {
      "latin": "Al-Mumtahanah",
      "index": 60,
    },
    {
      "latin": "As-Saff",
      "index": 61,
    },
    {
      "latin": "Al-Jumu'ah",
      "index": 62,
    },
    {
      "latin": "Al-Munafiqun",
      "index": 63,
    },
    {
      "latin": "At-Tagabun",
      "index": 64,
    },
    {
      "latin": "At-Talaq",
      "index": 65,
    },
    {
      "latin": "At-Tahrim",
      "index": 66,
    },
    {
      "latin": "Al-Mulk",
      "index": 67,
    },
    {
      "latin": "Al-Qalam",
      "index": 68,
    },
    {
      "latin": "Al-Haqqah",
      "index": 69,
    },
    {
      "latin": "Al-Ma'arij",
      "index": 70,
    },
    {
      "latin": "Nuh",
      "index": 71,
    },
    {
      "latin": "Al-Jinn",
      "index": 72,
    },
    {
      "latin": "Al-Muzzammil",
      "index": 73,
    },
    {
      "latin": "Al-Muddassir",
      "index": 74,
    },
    {
      "latin": "Al-Qiyamah",
      "index": 75,
    },
    {
      "latin": "Al-Insan",
      "index": 76,
    },
    {
      "latin": "Al-Mursalat",
      "index": 77,
    },
    {
      "latin": "An-Naba'",
      "index": 78,
    },
    {
      "latin": "An-Nazi'at",
      "index": 79,
    },
    {
      "latin": "'Abasa",
      "index": 80,
    },
    {
      "latin": "At-Takwir",
      "index": 81,
    },
    {
      "latin": "Al-Infitar",
      "index": 82,
    },
    {
      "latin": "Al-Mutaffifin",
      "index": 83,
    },
    {
      "latin": "Al-Insyiqaq",
      "index": 84,
    },
    {
      "latin": "Al-Buruj",
      "index": 85,
    },
    {
      "latin": "At-Tariq",
      "index": 86,
    },
    {
      "latin": "Al-A'la",
      "index": 87,
    },
    {
      "latin": "Al-Gasyiyah",
      "index": 88,
    },
    {
      "latin": "Al-Fajr",
      "index": 89,
    },
    {
      "latin": "Al-Balad",
      "index": 90,
    },
    {
      "latin": "Asy-Syams",
      "index": 91,
    },
    {
      "latin": "Al-Lail",
      "index": 92,
    },
    {
      "latin": "Ad-Duha",
      "index": 93,
    },
    {
      "latin": "Asy-Syarh",
      "index": 94,
    },
    {
      "latin": "At-Tin",
      "index": 95,
    },
    {
      "latin": "Al-'Alaq",
      "index": 96,
    },
    {
      "latin": "Al-Qadr",
      "index": 97,
    },
    {
      "latin": "Al-Bayyinah",
      "index": 98,
    },
    {
      "latin": "Az-Zalzalah",
      "index": 99,
    },
    {
      "latin": "Al-'Adiyat",
      "index": 100,
    },
    {
      "latin": "Al-Qari'ah",
      "index": 101,
    },
    {
      "latin": "At-Takasur",
      "index": 102,
    },
    {
      "latin": "Al-'Asr",
      "index": 103,
    },
    {
      "latin": "Al-Humazah",
      "index": 104,
    },
    {
      "latin": "Al-Fil",
      "index": 105,
    },
    {
      "latin": "Quraisy",
      "index": 106,
    },
    {
      "latin": "Al-Ma'un",
      "index": 107,
    },
    {
      "latin": "Al-Kausar",
      "index": 108,
    },
    {
      "latin": "Al-Kafirun",
      "index": 109,
    },
    {
      "latin": "An-Nasr",
      "index": 110,
    },
    {
      "latin": "Al-Lahab",
      "index": 111,
    },
    {
      "latin": "Al-Ikhlas",
      "index": 112,
    },
    {
      "latin": "Al-Falaq",
      "index": 113,
    },
    {
      "latin": "An-Nas",
      "index": 114,
    }
  ];

  final recentSurah = [];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    print(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSurah
        : listSurah
            .where((element) => element['latin']
                .toString()
                .toUpperCase()
                .contains(query.toUpperCase()))
            .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(suggestionList[index]['latin']),
        onTap: () {
          Get.to(SurahDetail(), arguments: suggestionList[index]['index']);
        },
      ),
    );
  }
}
