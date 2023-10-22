import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/components/item_facebook_widget.dart';
import 'package:mycalendar_flutter/components/item_pinterest_widget.dart';
import 'package:mycalendar_flutter/components/item_tiktok_widget.dart';
import 'package:mycalendar_flutter/components/item_youtube_widget.dart';
import 'package:mycalendar_flutter/gen/assets.gen.dart';

class SettingBottomWidget extends StatelessWidget {
  const SettingBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, offset: Offset(10, 10), blurRadius: 20)
          ]),
      child: Column(
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
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Assets.icons.tiktok.svg(),
                ),
                title: const Text("Tiktok"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemTikTokWidget()));
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Assets.icons.youtube.svg(),
            ),
            title: const Text("Youtube"),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ItemYoutubeWidget()));
            },
          ),
          const SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Assets.icons.facebook.svg(),
            ),
            title: const Text("Facebook"),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ItemFacebookWidget()));
            },
          ),
          const SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Assets.icons.pinterest.svg(),
            ),
            title: const Text("Pinterest"),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ItemPinterestWidget()));
            },
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
