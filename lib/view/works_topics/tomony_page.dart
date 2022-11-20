import 'package:flutter/material.dart';
import 'package:portfolio_web/view/home_page/appbar.dart';

import '../works_pages/tomony_pages/tomony_five.dart';
import '../works_pages/tomony_pages/tomony_four.dart';
import '../works_pages/tomony_pages/tomony_nine.dart';
import '../works_pages/tomony_pages/tomony_one.dart';
import '../works_pages/tomony_pages/tomony_seven_eight.dart';
import '../works_pages/tomony_pages/tomony_six.dart';
import '../works_pages/tomony_pages/tomony_ten.dart';
import '../works_pages/tomony_pages/tomony_three.dart';
import '../works_pages/tomony_pages/tomony_two.dart';
import 'package:portfolio_web/view/works_pages/tomony_pages/tomony_eleven.dart';

class Tomony extends StatelessWidget {
  const Tomony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(
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
