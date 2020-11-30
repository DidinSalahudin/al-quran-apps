import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quran_app/application/asmaul_husna/asmaul_husna_bloc.dart';
import 'package:quran_app/application/doa_harian/doa_harian_bloc.dart';
import 'package:quran_app/application/surah/surah_bloc.dart';
import 'package:quran_app/presentation/pages/surah_detail/surah_detail.dart';
import 'package:shimmer/shimmer.dart';

class BuildDefaultTabController extends StatefulWidget {
  @override
  _BuildDefaultTabControllerState createState() =>
      _BuildDefaultTabControllerState();
}

class _BuildDefaultTabControllerState extends State<BuildDefaultTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: TabBar(
              labelColor: Color(0xFF2F302A),
              unselectedLabelColor: Color(0xFFE1D3B0),
              indicatorColor: Color(0xFF2F302A),
              tabs: [
                Tab(text: 'Surah'),
                Tab(text: 'Do\'a Harian'),
                Tab(text: 'Asmaul Husna'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                TabSurah(),
                TabDoaHarian(),
                TabAsmaulHusna(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TabAsmaulHusna extends StatelessWidget {
  const TabAsmaulHusna({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: BlocConsumer<AsmaulHusnaBloc, AsmaulHusnaState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            asmaulHusnaDataOption: (e) => e.dataAsmaulHusna.fold(
              () => TabAsmaulHusnaLoading(),
              (a) => a.fold(
                (l) => Center(
                  child: Text(l.toString()),
                ),
                (r) {},
              ),
            ),
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Center(
              child: CircularProgressIndicator(),
            ),
            asmaulHusnaDataOption: (e) => e.dataAsmaulHusna.fold(
              () => TabAsmaulHusnaLoading(),
              (a) => a.fold(
                (l) => Center(
                  child: Text(l.toString()),
                ),
                (r) {
                  final cdDoaHarian = <Widget>[];
                  for (var i = 0; i < r.data.length; i++) {
                    int number = i + 1;
                    cdDoaHarian.add(
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFE1D3B0),
                            child: Text(
                              number.toString(),
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          title: Text(r.data[i].latin),
                          subtitle: Text(r.data[i].translationId),
                          trailing: Text(
                            r.data[i].arabic,
                            style:
                                TextStyle(fontFamily: 'LPMQ', fontSize: 16.0),
                          ),
                        ),
                      ),
                    );
                    cdDoaHarian.add(
                      Divider(
                        height: 5.0,
                      ),
                    );
                  }
                  return ListView(
                    children: cdDoaHarian,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class TabAsmaulHusnaLoading extends StatelessWidget {
  const TabAsmaulHusnaLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: Colors.grey[300],
            period: Duration(milliseconds: 800),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  '',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              title: Text(
                'AAAAAAAAA',
                style: TextStyle(
                  backgroundColor: Colors.grey,
                  color: Colors.grey,
                ),
              ),
              subtitle: Text(
                'AAAAAAAAAAAAAAAAAAAAAAA',
                style: TextStyle(
                  backgroundColor: Colors.grey,
                  color: Colors.grey,
                ),
              ),
              trailing: Text(
                'AAAAAA',
                textAlign: TextAlign.right,
                style: TextStyle(
                  backgroundColor: Colors.grey,
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TabDoaHarian extends StatelessWidget {
  const TabDoaHarian({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: BlocConsumer<DoaHarianBloc, DoaHarianState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            doaHarianDataOption: (e) => e.dataDoaHarian.fold(
              () => TabDoaHarianLoading(),
              (a) => a.fold(
                (l) => Center(
                  child: Text(l.toString()),
                ),
                (r) {},
              ),
            ),
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Center(
              child: CircularProgressIndicator(),
            ),
            doaHarianDataOption: (e) => e.dataDoaHarian.fold(
              () => TabDoaHarianLoading(),
              (a) => a.fold(
                (l) => Center(
                  child: Text(l.toString()),
                ),
                (r) {
                  final cdDoaHarian = <Widget>[];
                  for (var i = 0; i < r.data.length; i++) {
                    cdDoaHarian.add(
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(
                            r.data[i].title,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'LPMQ',
                            ),
                          ),
                          subtitle: Text(
                            r.data[i].arabic,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: 'LPMQ',
                            ),
                          ),
                        ),
                      ),
                    );
                    cdDoaHarian.add(
                      Divider(
                        height: 5.0,
                      ),
                    );
                  }
                  return ListView(
                    children: cdDoaHarian,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class TabDoaHarianLoading extends StatelessWidget {
  const TabDoaHarianLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: Colors.grey[300],
            period: Duration(milliseconds: 800),
            child: ListTile(
              title: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'AAAAAAAAA',
                  style: TextStyle(
                    backgroundColor: Colors.grey,
                    color: Colors.grey,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n\nAAAAAAAAAAAAAA',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    backgroundColor: Colors.grey,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TabSurah extends StatelessWidget {
  const TabSurah({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: BlocConsumer<SurahBloc, SurahState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => TabSurahLoading(),
            surahDataOption: (e) => e.dataSurah.fold(
              () => TabSurahLoading(),
              (a) => a.fold(
                (l) => Center(
                  child: Text(l.toString()),
                ),
                (r) {},
              ),
            ),
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => TabSurahLoading(),
            surahDataOption: (e) => e.dataSurah.fold(
              () => TabSurahLoading(),
              (a) => a.fold(
                (l) => Center(
                  child: Text('error'),
                ),
                (r) {
                  final cd = <Widget>[];
                  for (var i = 0; i < r.surahInfo.length; i++) {
                    int number = i + 1;
                    cd.add(
                      InkWell(
                        onTap: () {
                          Get.to(SurahDetail(), arguments: number);
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xFFE1D3B0),
                            child: Text(
                              number.toString(),
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          title: Text(r.surahInfo[i].latin),
                          subtitle:
                              Text('Jumlah Ayat : ${r.surahInfo[i].ayahCount}'),
                          trailing: Text(
                            r.surahInfo[i].arabic,
                            textAlign: TextAlign.right,
                            style:
                                TextStyle(fontFamily: 'LPMQ', fontSize: 16.0),
                          ),
                        ),
                      ),
                    );
                    cd.add(
                      Divider(
                        height: 5.0,
                      ),
                    );
                  }
                  return ListView(
                    children: cd,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class TabSurahLoading extends StatelessWidget {
  const TabSurahLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: Colors.grey[300],
            period: Duration(milliseconds: 800),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  '',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              title: Text(
                'AAAAAAAAA',
                style: TextStyle(
                  backgroundColor: Colors.grey,
                  color: Colors.grey,
                ),
              ),
              subtitle: Text(
                'Jumlah Ayat : 200',
                style: TextStyle(
                  backgroundColor: Colors.grey,
                  color: Colors.grey,
                ),
              ),
              trailing: Text(
                'AAAAAA',
                textAlign: TextAlign.right,
                style: TextStyle(
                  backgroundColor: Colors.grey,
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
