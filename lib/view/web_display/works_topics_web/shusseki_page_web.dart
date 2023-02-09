import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/view/web_display/home_page_web/footer.dart';

import '../../../provider/provider.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_one_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_two_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_three_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_four_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_five_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_six_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_seven_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_eight_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_nine_web.dart';
import '../works_pages_web/shusseki_pages_web/shusseki_ten_web.dart';

class Shusseki extends ConsumerWidget {
  const Shusseki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(footerColorProvider.notifier)
          .update((state) => const Color(0xFF379BA5));
    });

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
            ShussekiOne(),
            ShussekiTwo(),
            ShussekiThree(),
            ShussekiFour(),
            ShussekiFive(),
            ShussekiSix(),
            ShussekiSeven(),
            ShussekiEight(),
            ShussekiNine(),
            ShussekiTen(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
