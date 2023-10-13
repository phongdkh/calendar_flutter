import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/components/item_facebook_widget.dart';
import 'package:mycalendar_flutter/components/item_pinterest_widget.dart';
import 'package:mycalendar_flutter/components/item_tiktok_widget.dart';
import 'package:mycalendar_flutter/components/item_youtube_widget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final one = Column(
      children: [
        const SizedBox(height: 5),
        ListTile(
          leading: Image.asset("assets/icons/comment.png", fit: BoxFit.cover),
          title: const Text("Phản hồi"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            launch(
                'mailto:hoaiphonghp@gmail.com?subject=Subject&body=Same Message');
          },
        ),
        ListTile(
          leading: Image.asset("assets/icons/star.png", fit: BoxFit.cover),
          title: const Text("Đánh giá"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("assets/icons/share.png", fit: BoxFit.cover),
          title: const Text("Chia sẻ với bạn bè"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Share.share('My Calendar');
          },
        ),
        ListTile(
          leading: Image.asset("assets/icons/terms.png", fit: BoxFit.cover),
          title: const Text("Điều kiện"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset("assets/icons/shield.png", fit: BoxFit.cover),
          title: const Text("Chính sách bảo mật"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        const SizedBox(height: 5),
      ],
    );
    final two = Column(
      children: [
        const Column(
          children: [
            ListTile(
              title: Text("Theo dõi tôi"),
            ),
          ],
        ),
        Column(
          children: [
            ListTile(
              leading: Image.asset("assets/icons/tiktok.png", fit: BoxFit.cover),
              title: const Text("Tiktok"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const ItemTikTokWidget()));
              },
            ),
          ],
        ),
        const SizedBox(height: 5),
        ListTile(
          leading: Image.asset("assets/icons/youtube.png", fit: BoxFit.cover),
          title: const Text("Youtube"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const ItemYoutubeWidget()));
          },
        ),
        const SizedBox(height: 5),
        ListTile(
          leading: Image.asset("assets/icons/facebook.png", fit: BoxFit.cover),
          title: const Text("Facebook"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const ItemFacebookWidget()));
          },
        ),
        const SizedBox(height: 5),
        ListTile(
          leading: Image.asset("assets/icons/pinterest.png", fit: BoxFit.cover),
          title: const Text("Pinterest"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const ItemPinterestWidget()));
          },
        ),
        const SizedBox(height: 5),
      ],
    );

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
          icon: Image.asset("assets/icons/crown.png"),
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(10, 10),
                                  blurRadius: 20)
                            ]),
                        child: one,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(5, 5),
                                  blurRadius: 10)
                            ]),
                        child: two,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  shareButton(String title, Function()? onTap) {
    return ElevatedButton(
        onPressed: onTap,
        child: Text(title, style: const TextStyle(fontSize: 20)));
  }
}
