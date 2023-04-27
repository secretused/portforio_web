import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/provider.dart';
import '../../../utils/project_widget/about_widget.dart';
import '../../../utils/extract_widget.dart';

class AboutFive extends ConsumerWidget {
  const AboutFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final int _worksChangeProviderStatus = ref.watch(worksGenreChangeProvider);

    return Container(
      height: deviceHeight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: deviceWidth * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BodyText(
                  text: "Works",
                  color: const Color.fromRGBO(3, 144, 126, 1),
                  fontSize: deviceHeight * 0.12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Bebas Neue",
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                SizedBox(
                  width: deviceWidth * 0.37,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WorksGenreChangeButton(
                        worksGenre: "ServiceDesign",
                        worksGenreIndex: 0,
                        targetSize: deviceHeight,
                      ),
                      WorksGenreChangeButton(
                        worksGenre: "WebDesign",
                        worksGenreIndex: 1,
                        targetSize: deviceHeight,
                      ),
                      WorksGenreChangeButton(
                        worksGenre: "OtherDesign",
                        worksGenreIndex: 2,
                        targetSize: deviceHeight,
                      ),
                    ],
                  ),
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: worksWidgetList[_worksChangeProviderStatus].length,
                  itemBuilder: (context, index) {
                    return worksWidgetList[_worksChangeProviderStatus][index];
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    // childAspectRatio: 1 / 1,
                    crossAxisCount: 3, //ボックスを横に並べる数
                  ),
                ),
                HeightSizedBox(targetSize: deviceHeight, value: 0.03),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
