import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/Works_Widget/works_widget.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.worksRef,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  final WidgetRef worksRef;

  @override
  Widget build(BuildContext context) {
    // Works List
    final worksItems = <Widget>[
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '01',
        topicColor: const Color(0xFF87C495),
        imagePath: 'https://i.imgur.com/R58XrDL.png',
        catchPhrase: '生理中のパートナーのお悩み質問',
        title: 'TOMONY',
        paddingLeft: 0.35,
        imagePadding: 0.1,
        navigationPath: '/tomony',
        worksRef: worksRef,
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '02',
        topicColor: const Color(0xFF379BA5),
        imagePath: 'https://i.imgur.com/rV2dMha.png',
        catchPhrase: 'QRコードで簡単入館',
        title: 'シュッ席',
        paddingLeft: 0.35,
        imagePadding: 0.1,
        navigationPath: '/shusseki',
        worksRef: worksRef,
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '03',
        topicColor: const Color(0xFFEBAA14),
        imagePath: 'https://i.imgur.com/Mr0yQax.png',
        catchPhrase: '長く使える幼児向け録音アプリ',
        title: 'ぽちぽち',
        paddingLeft: 0.35,
        imagePadding: 0.1,
        navigationPath: '/pochipochi',
        worksRef: worksRef,
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '04',
        topicColor: const Color(0xFFCBCBCB),
        imagePath: 'https://i.imgur.com/g0RSo7d.png',
        catchPhrase: 'その他',
        title: 'OtherWorks',
        paddingLeft: 0.28,
        imagePadding: 0.01,
        navigationPath: '/otherWorks',
        worksRef: worksRef,
      ),
    ];

    return Container(
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
            // autoplay: true,
          ),
        ),
      ),
    );
  }
}
