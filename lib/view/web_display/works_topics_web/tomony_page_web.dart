import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../works_pages_web/tomony_pages_web/tomony_five_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_four_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_nine_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_one_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_seven_eight_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_six_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_ten_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_three_web.dart';
import '../works_pages_web/tomony_pages_web/tomony_two_web.dart';
import 'package:portfolio_web/view/web_display/works_pages_web/tomony_pages_web/tomony_eleven_web.dart';

class Tomony extends StatelessWidget {
  const Tomony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(deviceHeight * 0.1),
        child: AppBar(
          backgroundColor: Colors.white.withOpacity(0.0),
          leading: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.navigate_before,
              size: deviceHeight * 0.09,
              color: const Color.fromRGBO(0, 0, 0, 0.6),
            ),
            onPressed: () => GoRouter.of(context).go("/"),
          ),
          elevation: 0.0,
        ),
      ),
      extendBodyBehindAppBar: true,
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
