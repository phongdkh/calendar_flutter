import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/pages/bottom_tab_page.dart';
import 'package:mycalendar_flutter/pages/detail/setting_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const BottomTabPage(),
      //home: const SettingPage(),
    );
  }
}