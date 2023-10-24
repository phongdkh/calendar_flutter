import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/gen/assets.gen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../generated/l10n.dart';

class SettingTopWidget extends StatelessWidget {
  const SettingTopWidget({Key? key}) : super(key: key);

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
          const SizedBox(height: 5),
          ListTile(
            leading: Assets.icons.messenger.svg(width: 40, height: 40),
            title: Text(
              S.of(context).messenger,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {
              launch(
                  'mailto:hoaiphonghp@gmail.com?subject=Subject&body=Same Message');
            },
          ),
          ListTile(
            leading: Assets.icons.star.svg(width: 40, height: 40),
            title: Text(
              S.of(context).evaluate,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Assets.icons.share.svg(width: 40, height: 40),
            title: Text(
              S.of(context).share,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {
              Share.share(
                "text",
                subject: "subject",
              );
            },
          ),
          ListTile(
            leading: Assets.icons.condion.svg(width: 40, height: 40),
            title: Text(
              S.of(context).condition,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ListTile(
            leading: Assets.icons.shield.svg(width: 40, height: 40),
            title: Text(
              S.of(context).security,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
