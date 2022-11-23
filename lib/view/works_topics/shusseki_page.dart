import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/home_page/appbar.dart';

import '../works_pages/shusseki_pages/shusseki_one.dart';
import '../works_pages/shusseki_pages/shusseki_two.dart';
import '../works_pages/shusseki_pages/shusseki_three.dart';
import '../works_pages/shusseki_pages/shusseki_four.dart';
import '../works_pages/shusseki_pages/shusseki_five.dart';
import '../works_pages/shusseki_pages/shusseki_six.dart';
import '../works_pages/shusseki_pages/shusseki_seven.dart';
import '../works_pages/shusseki_pages/shusseki_eight.dart';
import '../works_pages/shusseki_pages/shusseki_nine.dart';

class Shusseki extends ConsumerWidget {
  const Shusseki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(
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
