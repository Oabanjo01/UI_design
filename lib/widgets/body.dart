import 'package:flutter/material.dart';

import 'about_me.dart';
import 'headerandsearch.dart';
import 'latestheader.dart';
import 'latest_list.dart';
import 'recommended_lists.dart';
import 'recommendedheader.dart';
import 'wildlife_list.dart';
import 'wildlife_header.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderandSearch(size: size),
          RecommendedHeader(
            press: () {},
            title: 'Recommendation',
          ),
          RecommendedLists(size: size),
          LatestHeader(
            press: () {},
            title: 'Latest',
          ),
          LatestPictures(),
          SizedBox(
            height: size.height * 0.04,
          ),
          WildlifeHeader(
            press: () {},
            title: 'WildLife',
          ),
          WildLife(),
          SizedBox(
            height: size.height * 0.1,
          ),
          AboutSection()
        ],
      ),
    );
  }
}
