import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/components/item_facebook_widget.dart';
import 'package:mycalendar_flutter/components/item_pinterest_widget.dart';
import 'package:mycalendar_flutter/components/item_tiktok_widget.dart';
import 'package:mycalendar_flutter/components/item_youtube_widget.dart';
import 'package:mycalendar_flutter/gen/assets.gen.dart';

import '../../../generated/l10n.dart';

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Text(
                S.of(context).follow,
                style: const TextStyle(fontSize: 18),
              ),
              ListTile(
                leading: Assets.icons.tiktok.svg(width: 40, height: 40),
                title: Text(
                  S.of(context).tiktok,
                ),
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
            leading: Assets.icons.youtube.svg(width: 40, height: 40),
            title: Text(
              S.of(context).youtube,
            ),
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
            leading: Assets.icons.facebook.svg(width: 40, height: 40),
            title: Text(
              S.of(context).facebook,
            ),
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
            leading: Assets.icons.pinterest.svg(width: 40, height: 40),
            title: Text(
              S.of(context).pinterest,
            ),
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
