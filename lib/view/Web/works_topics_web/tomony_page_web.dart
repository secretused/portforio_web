import 'package:flutter/material.dart';
import 'package:portfolio_web/view/web/home_page_web/appbar_web.dart';

import '../works_pages_web/tomony_pages_web/tomony_five_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_four_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_nine_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_one_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_seven_eight_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_six_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_ten_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_three_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_two_web.dart';
import 'package:portfolio_web/view/web/works_pages_web/tomony_pages_web/tomony_eleven_web.dart';

class Tomony extends StatelessWidget {
  const Tomony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbarWeb(
          backgroundColor: Color(0xFF87C495),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TomonyOne(),
            TomonyTwo(),
            TomonyThree(),
            TomonyFour(),
            TomonyFive(),
            TomonySix(),
            TomonySeven(),
            TomonyEight(),
            TomonyNine(),
            TomonyTen(),
            TomonyEleven(),
          ],
        ),
      ),
    );
  }
}
