import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../utils/works_widget.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

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
        worksGenre: '2022 UIUX Design App',
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '02',
        imagePath: 'https://i.imgur.com/q8j8c1i.png',
        catchPhrase: '男性限定 生理質問アプリ',
        title: 'TOMONY',
        worksGenre: '2022 UIUX Design App',
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '03',
        imagePath: 'https://i.imgur.com/q8j8c1i.png',
        catchPhrase: '男性限定 生理質問アプリ',
        title: 'TOMONY',
        worksGenre: '2022 UIUX Design App',
      ),
      WorksContent(
        deviceHeight: deviceHeight,
        deviceWidth: deviceWidth,
        indexNumber: '04',
        imagePath: 'https://i.imgur.com/q8j8c1i.png',
        catchPhrase: '男性限定 生理質問アプリ',
        title: 'TOMONY',
        worksGenre: '2022 UIUX Design App',
      ),
    ];

    return Container(
      color: Colors.white,
      child: Center(
        // child: CarouselSlider(
        //   items: worksItems,
        //   options: CarouselOptions(
        //     // autoPlay: true,
        //     autoPlayInterval: const Duration(seconds: 2),
        //     viewportFraction: 1,
        //     enlargeCenterPage: true,
        //   ),
        // ),
        child: Padding(
          padding: EdgeInsets.only(bottom: deviceHeight * 0.03),
          child: Swiper(
            itemCount: worksItems.length,
            itemBuilder: (context, index) {
              return worksItems[index];
            },
            pagination: SwiperPagination(
                margin: EdgeInsets.only(bottom: deviceHeight * 0.05)),
            // autoplay: true,
          ),
        ),
      ),
    );
  }
}
