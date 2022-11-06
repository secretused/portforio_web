import 'package:flutter/material.dart';

import '../../utils/works_appbar.dart';

class Tomony extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var appbarHeight = AppBar().preferredSize.height;

    return Scaffold(
      appBar: WorksAppbar(
        deviceWidth: deviceWidth,
        appbarHeight: appbarHeight,
      ),
      body: Text("Tomony"),
    );
  }
}
