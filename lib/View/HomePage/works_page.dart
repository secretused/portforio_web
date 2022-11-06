import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/works_widget.dart';

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
        imagePath: 'https://i.imgur.com/q8j8c1i.png',
        catchPhrase: '男性限定 生理質問アプリ',
        title: 'TOMONY',
        navigationPath: '/tomony',
        worksRef: worksRef,
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '02',
        imagePath: 'https://i.imgur.com/q8j8c1i.png',
        catchPhrase: 'QRコードで簡単入館',
        title: 'シュッ席',
        navigationPath: '/shusseki',
        worksRef: worksRef,
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '03',
        imagePath: 'https://i.imgur.com/q8j8c1i.png',
        catchPhrase: '長く使える幼児向け録音アプリ',
        title: 'ぽちぽち',
        navigationPath: '/pochipochi',
        worksRef: worksRef,
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '04',
        imagePath: 'https://i.imgur.com/q8j8c1i.png',
        catchPhrase: 'その他',
        title: 'OtherWorks',
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
