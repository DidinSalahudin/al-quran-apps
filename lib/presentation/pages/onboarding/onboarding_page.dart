import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/presentation/pages/home/home_page.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Get.off(HomePage());
    });
  }

  @override
  void initState() {
    startSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 50.0, left: 50.0),
        child: Column(
          children: [
            Container(
              height: 80.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        'Al-Qur\'an dan\nTerjemahan Offline',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFE8A500)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Text(
                        'Pelajari Al-Qur\'an \ndan Bacalah setiap hari',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFFE1D3B0),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFE1D3B0),
                              borderRadius: BorderRadius.circular(28.0),
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
                            alignment: Alignment(0, 0.5),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          " \"Bacalah al-Qur\'an itu, karena sesungguhnya ia akan datang pada Hari Kiamat sebagai pemberi syafa\'at bagi para pembaca lainnya.\"",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF2F302A),
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          "(Hadist Riwayat Imam Muslim)",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF2F302A),
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 10.0),
                                      child: Image.asset(
                                        'assets/images/al-quran.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
