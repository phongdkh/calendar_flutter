import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/pages/detail/challenge_page.dart';
import 'package:mycalendar_flutter/pages/detail/home_page.dart';
import 'package:mycalendar_flutter/pages/detail/manager_page.dart';
import 'package:mycalendar_flutter/pages/detail/setting_page.dart';

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({Key? key}) : super(key: key);

  @override
  State<BottomTabPage> createState() => _BottomTabPageState();
}

class _BottomTabPageState extends State<BottomTabPage> {
  int currentTab = 0;
  List<Widget> screens = [
    const ManagerPage(),
    const HomePage(),
    const SettingPage(),
    const ChallengePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0x66f32525),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0x66f32525),
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  currentScreen = const HomePage();
                  currentTab = 1;
                });
              }, // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_today,
                      color:
                          currentTab == 0 ? Colors.grey : Colors.green), // icon
                  const Text("Lịch"), // text
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentScreen = const ManagerPage();
                  currentTab = 1;
                });
              }, // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_balance_wallet_rounded,
                      color:
                          currentTab == 0 ? Colors.grey : Colors.green), // icon
                  const Text("Quản lý"), // text
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentScreen = const ChallengePage();
                  currentTab = 1;
                });
              }, // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera,
                      color:
                          currentTab == 0 ? Colors.grey : Colors.green), // icon
                  const Text("Thử thách"), // text
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentScreen = const SettingPage();
                  currentTab = 1;
                });
              }, // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings,
                      color:
                          currentTab == 0 ? Colors.grey : Colors.green), // icon
                  const Text("Cài đặt"), // text
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
