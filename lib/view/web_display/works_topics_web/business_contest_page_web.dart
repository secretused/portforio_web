import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/view/web_display/home_page_web/footer.dart';

import '../works_pages_web/otherworks_pages_web/otherworks_three_web.dart';
import '../works_pages_web/otherworks_pages_web/otherworks_two_web.dart';

class BusinessContest extends ConsumerWidget {
  const BusinessContest({Key? key}) : super(key: key);

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
            OtherWorksTwo(),
            OtherWorksThree(),
            Footer(
              footerColor: Color(0xFF726353),
            ),
          ],
        ),
      ),
    );
  }
}
