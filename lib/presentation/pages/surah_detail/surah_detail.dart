import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quran_app/application/local_storage/local_storage_bloc.dart';
import 'package:quran_app/application/surah_detail/surah_detail_bloc.dart';
import 'package:quran_app/domain/surah_detail/surah_detail_data.dart';
import 'package:quran_app/presentation/pages/home/home_page.dart';
import 'package:shimmer/shimmer.dart';

class SurahDetail extends StatefulWidget {
  @override
  _SurahDetailState createState() => _SurahDetailState();
}

class _SurahDetailState extends State<SurahDetail> {
  final String nosurah = Get.arguments.toString();

  String localNamaSurah = '';
  String localNoSurah = '';
  int localNoAyat = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SurahDetailBloc()..add(SurahDetailEvent.getData(nosurah)),
        ),
        BlocProvider(
          create: (context) =>
              LocalStorageBloc()..add(LocalStorageEvent.getLocalStorageSurah()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SurahDetailBloc, SurahDetailState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () => BuilScafoldLoading(),
                surahDetailDataOption: (e) => e.dataSurahDetail.fold(
                  () => BuilScafoldLoading(),
                  (a) => a.fold(
                    (l) => buildScaffoldError(l.toString()),
                    (r) {},
                  ),
                ),
              );
            },
          ),
          BlocListener<LocalStorageBloc, LocalStorageState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                getLocalStorageSurahOption: (e) => e.dataLocalStorageData.fold(
                  () => {},
                  (a) => a.fold(
                    (l) {
                      Flushbar(
                        message: l.toString(),
                        margin: EdgeInsets.all(8),
                        borderRadius: 8,
                        icon: Icon(
                          Icons.info_outline,
                          size: 28.0,
                          color: Colors.blue[300],
                        ),
                        duration: Duration(seconds: 3),
                        leftBarIndicatorColor: Colors.blue[300],
                      )..show(context);
                    },
                    (r) {
                      localNamaSurah = r.namaSurah;
                      localNoSurah = r.noSurah;
                      localNoAyat = r.noAyat;
                    },
                  ),
                ),
                ceateLocalStorageSurahOption: (e) =>
                    e.dataLocalStorageData.fold(
                  () => {},
                  (a) => a.fold(
                    (l) {
                      Flushbar(
                        message: l.toString(),
                        margin: EdgeInsets.all(8),
                        borderRadius: 8,
                        icon: Icon(
                          Icons.info_outline,
                          size: 28.0,
                          color: Colors.blue[300],
                        ),
                        duration: Duration(seconds: 3),
                        leftBarIndicatorColor: Colors.blue[300],
                      )..show(context);
                    },
                    (r) {
                      Flushbar(
                        message:
                            "Berhasil menandai terakhir baca\nSurah ${r.namaSurah} ayat ${r.noAyat}",
                        margin: EdgeInsets.all(8),
                        borderRadius: 8,
                        icon: Icon(
                          Icons.check,
                          size: 28.0,
                          color: Colors.green,
                        ),
                        duration: Duration(seconds: 5),
                      )..show(context);

                      localNamaSurah = r.namaSurah;
                      localNoSurah = r.noSurah;
                      localNoAyat = r.noAyat;
                    },
                  ),
                ),
              );
            },
          ),
        ],
        child: BlocBuilder<SurahDetailBloc, SurahDetailState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => BuilScafoldLoading(),
              surahDetailDataOption: (e) => e.dataSurahDetail.fold(
                () => BuilScafoldLoading(),
                (a) => a.fold(
                  (l) => buildScaffoldError(l.toString()),
                  (r) => buildScaffold(r),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Scaffold buildScaffoldLoading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Scaffold buildScaffoldError(String _dataError) {
    return Scaffold(
      body: Center(
        child: Text(_dataError),
      ),
    );
  }

  Scaffold buildScaffold(SurahDetailDataResultData _data) {
    final containerText = <Widget>[];
    for (var i = 1; i <= int.tryParse(_data.numberOfAyah); i++) {
      containerText.add(
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFE1D3B0),
                    child: Text(
                      i.toString(),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      BlocBuilder<LocalStorageBloc, LocalStorageState>(
                        builder: (context, state) {
                          return InkWell(
                            child: Icon(
                              (localNoSurah == nosurah && localNoAyat == i)
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                              color: Color(0xFFE1D3B0),
                              size: 30.0,
                            ),
                            onTap: () {
                              // ignore: deprecated_member_use
                              context.bloc<LocalStorageBloc>().add(
                                    LocalStorageEvent.createLocalStorageSurah(
                                      _data.nameLatin,
                                      nosurah,
                                      i,
                                    ),
                                  );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                alignment: Alignment.centerRight,
                child: Text(
                  _data.text[i.toString()],
                  style: TextStyle(
                    fontFamily: 'LPMQ',
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Artinya :\n' +
                      _data.translations['id']['text'][i.toString()],
                  style: TextStyle(
                    fontFamily: 'LPMQ',
                    fontSize: 18.0,
                  ),
                ),
              ),
              Divider(
                height: 30.0,
              )
            ],
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF2F302A)),
          onPressed: () {
            Get.offAll(HomePage());
          },
        ),
        title: Text(
          _data.nameLatin,
          style: TextStyle(
            color: Color(0xFF2F302A),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          return !await Get.offAll(HomePage());
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFE1D3B0),
                  borderRadius: BorderRadius.circular(28.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      _data.nameLatin,
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      _data.translations['id']['name'],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'LPMQ',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${_data.numberOfAyah} Ayat',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    (_data.number.toString() == '1' ||
                            _data.number.toString() == '9')
                        ? SizedBox(
                            height: 0,
                          )
                        : SizedBox(
                            height: 15.0,
                          ),
                    (_data.number.toString() == '1' ||
                            _data.number.toString() == '9')
                        ? Text('')
                        : Text(
                            'بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'LPMQ',
                              fontSize: 28.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Column(
                  children: containerText,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BuilScafoldLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF2F302A),
          ),
          onPressed: () => Get.off(HomePage()),
        ),
        title: Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: Colors.grey[300],
          period: Duration(milliseconds: 800),
          child: Text(
            'AAAAAA',
            style: TextStyle(
              backgroundColor: Colors.grey,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      body: Shimmer.fromColors(
        highlightColor: Colors.white,
        baseColor: Colors.grey[300],
        period: Duration(milliseconds: 800),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFE1D3B0),
                  borderRadius: BorderRadius.circular(28.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'AAAAAAA',
                      style: TextStyle(
                        fontSize: 35.0,
                        backgroundColor: Colors.grey,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'AAAAAAA',
                      style: TextStyle(
                        fontSize: 16.0,
                        backgroundColor: Colors.grey,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'AAAAAAA',
                      style: TextStyle(
                        fontSize: 20.0,
                        backgroundColor: Colors.grey,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'AAAAAAAAAAAAA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        backgroundColor: Colors.grey,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            BlocBuilder<LocalStorageBloc, LocalStorageState>(
                              builder: (context, state) {
                                return InkWell(
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.grey,
                                    size: 30.0,
                                  ),
                                  onTap: () {},
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 25.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 18.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Divider(
                      height: 30.0,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            BlocBuilder<LocalStorageBloc, LocalStorageState>(
                              builder: (context, state) {
                                return InkWell(
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.grey,
                                    size: 30.0,
                                  ),
                                  onTap: () {},
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 25.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 18.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Divider(
                      height: 30.0,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            BlocBuilder<LocalStorageBloc, LocalStorageState>(
                              builder: (context, state) {
                                return InkWell(
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.grey,
                                    size: 30.0,
                                  ),
                                  onTap: () {},
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 25.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 18.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Divider(
                      height: 30.0,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            BlocBuilder<LocalStorageBloc, LocalStorageState>(
                              builder: (context, state) {
                                return InkWell(
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.grey,
                                    size: 30.0,
                                  ),
                                  onTap: () {},
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 25.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 18.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Divider(
                      height: 30.0,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            BlocBuilder<LocalStorageBloc, LocalStorageState>(
                              builder: (context, state) {
                                return InkWell(
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.grey,
                                    size: 30.0,
                                  ),
                                  onTap: () {},
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 25.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'AAAAAAA',
                        style: TextStyle(
                          fontSize: 18.0,
                          backgroundColor: Colors.grey,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Divider(
                      height: 30.0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
