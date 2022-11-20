import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'appbar.dart';
import '../../utils/project_widget/works_widget.dart';

class WorksPage extends ConsumerWidget {
  WorksPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // isuue Appbarを色が変えれるか
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(
          backgroundColor: Color(0xFF87C495),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.03),
            child: Swiper(
              pagination: SwiperPagination(
                margin: EdgeInsets.only(bottom: deviceHeight * 0.05),
                builder: const DotSwiperPaginationBuilder(
                  color: Colors.grey,
                  activeColor: Colors.black,
                  size: 13,
                  activeSize: 13,
                  space: 5,
                ),
              ),
              itemCount: worksItems.length,
              itemBuilder: (context, index) {
                return worksItems[index];
              },
              controller: SwiperController(),
              autoplayDelay: 2500,
              // autoplay: true,
            ),
          ),
        ),
      ),
    );
  }

  // Works List
  final List<Widget> worksItems = <Widget>[
    const WorksTopic(
      indexNumber: '01',
      topicColor: Color(0xFF87C495),
      imagePath: 'https://i.imgur.com/R58XrDL.png',
      catchPhrase: '生理中のパートナーのお悩み質問',
      title: 'TOMONY',
      fontName: "Arial Black",
      paddingLeft: 0.33,
      imagePadding: 0.1,
      navigationPath: '/tomony',
    ),
    const WorksTopic(
      indexNumber: '02',
      topicColor: Color(0xFF379BA5),
      imagePath: 'https://i.imgur.com/rV2dMha.png',
      catchPhrase: 'QRコードで簡単入館',
      title: 'シュッ席',
      fontName: "Arial Black",
      paddingLeft: 0.35,
      imagePadding: 0.1,
      navigationPath: '/shusseki',
    ),
    const WorksTopic(
      indexNumber: '03',
      topicColor: Color(0xFFEBAA14),
      imagePath: 'https://i.imgur.com/jNFOx30.png',
      catchPhrase: '長く使える幼児向け音声再生アプリ',
      title: 'ぽちぽち',
      fontName: "しあさって",
      paddingLeft: 0.35,
      imagePadding: 0.1,
      navigationPath: '/pochipochi',
    ),
    const WorksTopic(
      indexNumber: '04',
      topicColor: Color(0xFFCBCBCB),
      imagePath: 'https://i.imgur.com/g0RSo7d.png',
      catchPhrase: 'その他',
      title: 'OtherWorks',
      fontName: "Potta One",
      paddingLeft: 0.28,
      imagePadding: 0.01,
      navigationPath: '/otherWorks',
    ),
  ];
}
