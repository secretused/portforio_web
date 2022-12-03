import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/Web/home_page_web/appbar_web.dart';

import '../works_pages_web/pochipochi_pages_web/pochipochi_one_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_two_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_three_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_four_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_five_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_six_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_seven_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_eight_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_nine_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_ten_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_eleven_web.dart';
import '../works_pages_web/pochipochi_pages_web/pochipochi_twelve_web.dart';

class Pochipochi extends ConsumerWidget {
  const Pochipochi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(
          backgroundColor: Color(0xFFEBAA14),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PochipochiOne(),
            PochipochiTwo(),
            PochipochiThree(),
            PochipochiFour(),
            PochipochiFive(),
            PochipochiSix(),
            PochipochiSeven(),
            PochipochiEight(),
            PochipochiNine(),
            PochipochiTen(),
            PochipochiEleven(),
            PochipochiTwelve(),
          ],
        ),
      ),
    );
  }
}
