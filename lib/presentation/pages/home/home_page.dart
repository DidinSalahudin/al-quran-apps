import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quran_app/application/asmaul_husna/asmaul_husna_bloc.dart';
import 'package:quran_app/application/doa_harian/doa_harian_bloc.dart';
import 'package:quran_app/application/local_storage/local_storage_bloc.dart';
import 'package:quran_app/application/surah/surah_bloc.dart';
import 'package:quran_app/presentation/pages/widget/home/data_search.dart';
import 'package:quran_app/presentation/pages/widget/home/tab_controller.dart';
import 'package:quran_app/presentation/pages/widget/home/drawer.dart';
import 'package:quran_app/presentation/pages/widget/home/terakhir_baca.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LocalStorageBloc _localStorageBloc = LocalStorageBloc();

  DateTime backbuttonpressedTime;

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();

    bool backButton = backbuttonpressedTime == null ||
        currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);

    if (backButton) {
      backbuttonpressedTime = currentTime;
      Fluttertoast.showToast(
        msg: "Tekan sekali lagi untuk keluar",
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );

      return false;
    }
    return true;
  }

  @override
  void initState() {
    _localStorageBloc.add(LocalStorageEvent.getLocalStorageSurah());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SurahBloc>(
          create: (context) => SurahBloc()..add(SurahEvent.getData()),
        ),
        BlocProvider<DoaHarianBloc>(
          create: (context) => DoaHarianBloc()..add(DoaHarianEvent.getData()),
        ),
        BlocProvider<AsmaulHusnaBloc>(
          create: (context) =>
              AsmaulHusnaBloc()..add(AsmaulHusnaEvent.getData()),
        ),
        BlocProvider<LocalStorageBloc>(
          create: (context) => _localStorageBloc,
        ),
      ],
      child: Scaffold(
        drawer: buildDrawer(context),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'Al-Qur\'an',
            style: TextStyle(
              color: Color(0xFF2F302A),
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Color(0xFF2F302A),
                size: 25.0,
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: DataSearch(),
                );
              },
            )
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.short_text,
                  color: Color(0xFF2F302A),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: WillPopScope(
          onWillPop: onWillPop,
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: [
                Container(
                  height: 200.0,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 10.0, left: 15.0, bottom: 15.0),
                        width: double.infinity,
                        child: Text(
                          'Assalamualaikum',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFFE1D3B0),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        width: double.infinity,
                        height: 134.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFE1D3B0),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 1,
                              offset: Offset(
                                0,
                                3,
                              ),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BlocListener<LocalStorageBloc, LocalStorageState>(
                              listener: (context, state) {
                                state.maybeMap(
                                  orElse: () => TerakhirDibaca(
                                    namaSurah: "Tidak Ada",
                                    noSurah: "0",
                                    noAyat: 1,
                                  ),
                                  getLocalStorageSurahOption: (e) =>
                                      e.dataLocalStorageData.fold(
                                    () => TerakhirDibaca(
                                      namaSurah: "Tidak Ada",
                                      noSurah: "0",
                                      noAyat: 0,
                                    ),
                                    (a) => a.fold(
                                      (l) => TerakhirDibaca(
                                        namaSurah: "Tidak Ada",
                                        noSurah: "0",
                                        noAyat: 0,
                                      ),
                                      (r) => TerakhirDibaca(
                                        namaSurah: r.namaSurah,
                                        noSurah: r.noSurah,
                                        noAyat: r.noAyat,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: BlocBuilder<LocalStorageBloc,
                                  LocalStorageState>(
                                builder: (context, state) {
                                  return state.maybeMap(
                                    orElse: () => TerakhirDibaca(
                                      namaSurah: "Tidak Ada",
                                      noSurah: "0",
                                      noAyat: 1,
                                    ),
                                    getLocalStorageSurahOption: (e) =>
                                        e.dataLocalStorageData.fold(
                                      () => TerakhirDibaca(
                                        namaSurah: "Tidak Ada",
                                        noSurah: "0",
                                        noAyat: 0,
                                      ),
                                      (a) => a.fold(
                                        (l) => TerakhirDibaca(
                                          namaSurah: "Tidak Ada",
                                          noSurah: "0",
                                          noAyat: 0,
                                        ),
                                        (r) => TerakhirDibaca(
                                          namaSurah: r.namaSurah,
                                          noSurah: r.noSurah,
                                          noAyat: r.noAyat,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              child: Image.asset(
                                'assets/images/al-quran.jpg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: BuildDefaultTabController(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
