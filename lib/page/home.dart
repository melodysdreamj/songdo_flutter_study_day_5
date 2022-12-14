import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:songdo_flutter_study_day_5/lib/tmdb/spell.dart';
import 'package:songdo_flutter_study_day_5/util/ready_app.dart';
import 'package:songdo_flutter_study_day_5/util/start_app.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../component/netflix_horizontal_list.dart';
import '../gen/assets.gen.dart';
import '../lib/tmdb/model/movie.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getData();
    FlutterStatusbarcolor.setNavigationBarColor(Colors.black);
    super.initState();
  }

  List<String> postUrls1 = [];
  List<String> postUrls2 = [];
  List<String> postUrls3 = [];

  getData() async {
    List<Movie> popular = await TMDBSpell.to.getPopular();

    postUrls1 = [];
    for (var element in popular) {
      postUrls1.add(element.posterPath);
    }

    List<Movie> topRated = await TMDBSpell.to.getMovieTopRated();

    postUrls2 = [];
    for (var element in topRated) {
      postUrls2.add(element.posterPath);
    }

    List<Movie> weekTrending = await TMDBSpell.to.getWeekTrending();


    postUrls3 = [];
    for (var element in weekTrending) {
      postUrls3.add(element.posterPath);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
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
                          Text("TV????????????"),
                          Text("??????"),
                          Text("????????????"),
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
                          Text("????????? ?????????").textStyle(
                              Theme.of(context).textTheme.bodyText1!),
                          Icon(Entypo.dot_single).iconColor(Colors.red),
                          Text("?????? ?????????").textStyle(
                              Theme.of(context).textTheme.bodyText1!),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.add),
                              Text("?????? ?????? ?????????"),
                            ],
                          ).expanded(),
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color!,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(3))),
                            child: Row(
                              children: [
                                Icon(Icons.play_arrow).iconColor(Colors.black),
                                Text("??????").textColor(Colors.black),
                              ],
                            ).padding(horizontal: 15, vertical: 7),
                          ),
                          Column(
                            children: [
                              Icon(Icons.info_outline),
                              Text("??????"),
                            ],
                          ).expanded(),
                        ],
                      )
                    ],
                  ).opacity(0.8),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              NetflixHorizontalList(
                postUrls: postUrls1,
                width: 110,
                height: 170,
                label: "???????????? ?????? ?????????",
              ),
              NetflixHorizontalList(
                postUrls: postUrls2,
                width: 110,
                height: 170,
                label: "?????? ?????? ?????????",
              ),
              NetflixHorizontalList(
                postUrls: postUrls3,
                width: 170,
                height: 250,
                label: "?????? ??????????????????",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

main() {
  startApp(home: Home());
}
