import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/presentation/pages/home/home_page.dart';

class TentangPage extends StatefulWidget {
  @override
  _TentangPageState createState() => _TentangPageState();
}

class _TentangPageState extends State<TentangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF2F302A)),
          onPressed: () {
            Get.offAll(HomePage());
          },
        ),
        title: Text(
          'Tentang Aplikasi',
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
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Al-Qur\'an dan Terjemahan Offline',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                  'Aplikasi ini versi pertama sehingga jika terdapat kesalahan dalam pembuatan mohon dimaafkan dan boleh diinfokan di alamat :',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Text(
                          '- Email',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          ': didinsalahudin@gmail.com',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Text(
                          '- No Hp/WA',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          ': 085222297387',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
