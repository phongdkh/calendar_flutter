import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/pages/detail/setting_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../generated/l10n.dart';

class ItemPinterestWidget extends StatefulWidget {
  const ItemPinterestWidget({Key? key}) : super(key: key);

  @override
  State<ItemPinterestWidget> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<ItemPinterestWidget> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
        Uri.parse('https://www.tiktok.com/@hoaiphong1993?_t=8gOVvMljMsJ&_r=1'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SettingPage()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          S.of(context).pinterest,
          style: const TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}