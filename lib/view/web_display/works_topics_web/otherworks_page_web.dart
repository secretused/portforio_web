import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/web_display/home_page_web/appbar_web.dart';

import '../works_pages_web/otherworks_pages_web/otherworks_one_web.dart';
import '../works_pages_web/otherworks_pages_web/otherworks_three_web.dart';
import '../works_pages_web/otherworks_pages_web/otherworks_two_web.dart';
import '../works_pages_web/otherworks_pages_web/otherworks_four_web.dart';
import '../works_pages_web/otherworks_pages_web/otherworks_five_web.dart';
import '../works_pages_web/otherworks_pages_web/otherworks_six_web.dart';
import '../works_pages_web/otherworks_pages_web/otherworks_seven_web.dart';

class OtherWorks extends ConsumerWidget {
  const OtherWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbarWeb(
          backgroundColor: Color(0xFFCBCBCB),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            OtherWorksOne(),
            OtherWorksTwo(),
            OtherWorksThree(),
            OtherWorksFour(),
            OtherWorksFive(),
            OtherWorksSix(),
            OtherWorksSeven(),
          ],
        ),
      ),
    );
  }
}
