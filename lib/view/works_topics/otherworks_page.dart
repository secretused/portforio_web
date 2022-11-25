import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/home_page/appbar.dart';

import '../works_pages/otherworks_pages/otherworks_one.dart';
import '../works_pages/otherworks_pages/otherworks_three.dart';
import '../works_pages/otherworks_pages/otherworks_two.dart';
import '../works_pages/otherworks_pages/otherworks_four.dart';
import '../works_pages/otherworks_pages/otherworks_five.dart';
import '../works_pages/otherworks_pages/otherworks_six.dart';
import '../works_pages/otherworks_pages/otherworks_seven.dart';

class OtherWorks extends ConsumerWidget {
  const OtherWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(
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
