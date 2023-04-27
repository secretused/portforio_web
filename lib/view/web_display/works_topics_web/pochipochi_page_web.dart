import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../provider/provider.dart';
import '../home_page_web/footer.dart';
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
            Footer(footerColor: Color(0xFFEBAA14)),
          ],
        ),
      ),
    );
  }
}
