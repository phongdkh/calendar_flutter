import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/gen/assets.gen.dart';
import 'package:mycalendar_flutter/pages/detail/widget/setting_bottom_widget.dart';
import 'package:mycalendar_flutter/pages/detail/widget/setting_top_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "CÀI ĐẶT",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SizedBox(
            width: 50,
            height: 50,
            child: Assets.icons.crown.svg(),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            SettingTopWidget(),
            SizedBox(height: 20),
            SettingBottomWidget(),
          ],
        ),
      ),
    );
  }
}
