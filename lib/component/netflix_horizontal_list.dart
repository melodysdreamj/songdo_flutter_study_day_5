import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:songdo_flutter_study_day_5/util/start_app.dart';

import '../page/detail.dart';
import '../util/ready_app.dart';

class NetflixHorizontalList extends StatefulWidget {
  const NetflixHorizontalList({
    Key? key,
    required this.postUrls,
    required this.height,
    required this.width,
    required this.label,
  }) : super(key: key);

  final List<String> postUrls;
  final double height;
  final double width;
  final String label;

  @override
  State<NetflixHorizontalList> createState() => _NetflixHorizontalListState();
}

class _NetflixHorizontalListState extends State<NetflixHorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("넷플릭스 인기 콘텐츠")
            .textStyle(Theme.of(context).textTheme.headline6!)
            .fontWeight(FontWeight.w600)
            .fontSize(22)
            .alignment(Alignment.centerLeft)
            .padding(bottom: 4, left: 15),
        ListView.builder(
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.only(right: 8),
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(tmdb.images
                          .getUrl(widget.postUrls[index])!),
                      fit: BoxFit.cover),
                )).gestures(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(),
                    ),
                  );
            });
          },
          itemCount: widget.postUrls.length,
          scrollDirection: Axis.horizontal,
        ).height(200).width(1.sw),
      ],
    ).padding(bottom: 20);
  }
}

main() {
  startApp(home: NetflixHorizontalList(
    postUrls: [],
    height: 200,
    width: 100,
    label: "넷플릭스 인기 콘텐츠",
  ));
}
