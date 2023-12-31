import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/pages/detail/setting_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../generated/l10n.dart';

class ItemFacebookWidget extends StatefulWidget {
  const ItemFacebookWidget({Key? key}) : super(key: key);

  @override
  State<ItemFacebookWidget> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<ItemFacebookWidget> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
        Uri.parse('https://www.facebook.com'));

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
          S.of(context).facebook,
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