import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:songdo_flutter_study_day_5/util/ready_app.dart';
import 'package:songdo_flutter_study_day_5/util/start_app.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../gen/assets.gen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    FlutterStatusbarcolor.setNavigationBarColor(Colors.black);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image(
              image: CachedNetworkImageProvider(
                tmdb.images.getUrl("/wv22frLmCpXDRjKj4MWFwa4eTOK.jpg")!,
              ),
              fit: BoxFit.cover,
              height: 480,
              width: 1.sw,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(0.25),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
            ).height(480),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container()
                        .backgroundImage(DecorationImage(
                            image: AssetImage(Assets.logo),
                            fit: BoxFit.contain))
                        .height(30)
                        .width(30)
                        .opacity(0.9),
                    const Icon(FontAwesomeIcons.chromecast)
                        .iconSize(26)
                        .opacity(0.7),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("TV프로그램"),
                    Text("영화"),
                    Text("카테고리"),
                  ],
                ).opacity(0.8),
              ],
            ).padding(left: 6, right: 10, vertical: 15),
            Column(
              children: [
                SizedBox(
                  height: 440,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("긴장감 넘치는")
                        .textStyle(Theme.of(context).textTheme.bodyText1!),
                    Icon(Entypo.dot_single).iconColor(Colors.red),
                    Text("액션 스릴러")
                        .textStyle(Theme.of(context).textTheme.bodyText1!),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.add),
                        Text("내가 찜한 콘텐츠"),
                      ],
                    ).expanded(),
                    Row(
                      children: [
                        Icon(Icons.play_arrow).iconColor(Colors.black),
                        Text("재생").textColor(Colors.black),
                      ],
                    ).padding(vertical: 5,horizontal: 10).backgroundColor(Colors.white),
                    Column(
                      children: [
                        Icon(Icons.info_outline),
                        Text("정보"),
                      ],
                    ).expanded(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

main() {
  startApp(home: Home());
}
