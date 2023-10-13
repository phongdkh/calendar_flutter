import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/pages/detail/setting_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ItemYoutubeWidget extends StatefulWidget {
  const ItemYoutubeWidget({Key? key}) : super(key: key);

  @override
  State<ItemYoutubeWidget> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<ItemYoutubeWidget> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
        Uri.parse('https://www.youtube.com'));

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
        title: const Text('Youtube'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}