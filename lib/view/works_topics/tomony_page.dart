import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/view/home_page/appbar.dart';
import 'package:portfolio_web/view/works_pages/tomony_pages/tomony_eleven.dart';
import 'dart:html' as html;

import '../../utils/AboutWidget/about_widget.dart';
import '../../utils/extract_widget.dart';
import '../works_pages/tomony_pages/tomony_five.dart';
import '../works_pages/tomony_pages/tomony_four.dart';
import '../works_pages/tomony_pages/tomony_nine.dart';
import '../works_pages/tomony_pages/tomony_one.dart';
import '../works_pages/tomony_pages/tomony_seven_eight.dart';
import '../works_pages/tomony_pages/tomony_six.dart';
import '../works_pages/tomony_pages/tomony_ten.dart';
import '../works_pages/tomony_pages/tomony_three.dart';
import '../works_pages/tomony_pages/tomony_two.dart';

final _statusProvider = StateProvider((_) => false);

class Tomony extends ConsumerWidget {
  const Tomony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var appbarHeight = AppBar().preferredSize.height;

    final bool _status = ref.watch(_statusProvider);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(),
      ),
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
          ],
        ),
      ),
    );
  }
}