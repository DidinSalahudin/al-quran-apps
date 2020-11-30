import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/presentation/pages/tentang/tentang_page.dart';

Widget buildDrawer(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.2,
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Salahudin"),
            accountEmail: Text("didinsalahudin@gmail.com"),
            decoration: BoxDecoration(
              color: Color(0xFFE1D3B0),
            ),
          ),
          _buildListTile(Icons.info, "Tentang Aplikasi", null),
        ],
      ),
    ),
  );
}

Widget _buildListTile(
  IconData iconLeading,
  String title,
  IconData iconTrailing,
) {
  return ListTile(
    leading: Icon(iconLeading),
    title: Text(title),
    trailing: Icon(iconTrailing),
    onTap: () {
      Get.to(TentangPage());
    },
  );
}
