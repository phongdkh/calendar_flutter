import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/pages/detail/setting_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ItemTikTokWidget extends StatefulWidget {
  const ItemTikTokWidget({Key? key}) : super(key: key);

  @override
  State<ItemTikTokWidget> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<ItemTikTokWidget> {
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
        title: const Text('Tik Tok'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}