import 'package:flutter/material.dart';
import 'package:mycalendar_flutter/gen/assets.gen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

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
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Assets.icons.messenger.svg(),
            ),
            title: const Text("Phản hồi"),
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
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Assets.icons.star.svg(),
            ),
            title: const Text("Đánh giá"),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Assets.icons.share.svg(),
            ),
            title: const Text("Chia sẻ với bạn bè"),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {
              Share.share('My Calendar');
            },
          ),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Assets.icons.agreement.svg(),
            ),
            title: const Text("Điều kiện"),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Assets.icons.shield.svg(),
            ),
            title: const Text("Chính sách bảo mật"),
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
