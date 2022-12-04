import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/web/home_page_web/appbar_web.dart';

import '../works_pages_web/shusseki_pages_web/shusseki_one_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_two_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_three_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_four_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_five_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_six_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_seven_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_eight_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_nine_web.dart';

class Shusseki extends ConsumerWidget {
  const Shusseki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbarWeb(
          backgroundColor: Color(0xFF379BA5),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ShussekiOne(),
            ShussekiTwo(),
            ShussekiThree(),
            ShussekiFour(),
            ShussekiFive(),
            ShussekiSix(),
            ShussekiSeven(),
            ShussekiEight(),
            ShussekiNine(),
          ],
        ),
      ),
    );
  }
}
