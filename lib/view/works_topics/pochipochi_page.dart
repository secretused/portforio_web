import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/home_page/appbar.dart';

import '../works_pages/pochipochi_pages/pochipochi_one.dart';
import '../works_pages/pochipochi_pages/pochipochi_two.dart';
import '../works_pages/pochipochi_pages/pochipochi_three.dart';
import '../works_pages/pochipochi_pages/pochipochi_four.dart';
import '../works_pages/pochipochi_pages/pochipochi_five.dart';
import '../works_pages/pochipochi_pages/pochipochi_six.dart';
import '../works_pages/pochipochi_pages/pochipochi_seven.dart';
import '../works_pages/pochipochi_pages/pochipochi_eight.dart';
import '../works_pages/pochipochi_pages/pochipochi_nine.dart';
import '../works_pages/pochipochi_pages/pochipochi_ten.dart';
import '../works_pages/pochipochi_pages/pochipochi_eleven.dart';
import '../works_pages/pochipochi_pages/pochipochi_twelve.dart';

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
