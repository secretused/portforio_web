import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/view/web_display/home_page_web/footer.dart';

import '../../../provider/provider.dart';
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

class Tomony extends ConsumerWidget {
  const Tomony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceHeight = MediaQuery.of(context).size.height;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(footerColorProvider.notifier)
          .update((state) => const Color(0xFF87C495));
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
            Footer(),
          ],
        ),
      ),
    );
  }
}
