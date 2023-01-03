import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_web/utils/mobile_widget/about_widget_mobile.dart';

import '../../../provider/provider.dart';
import '../../../utils/project_widget/about_widget.dart';
import '../../../utils/extract_widget.dart';

class AboutTwoMobile extends ConsumerWidget {
  const AboutTwoMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    final bool _mobileDirectionProviderStatus =
        ref.watch(mobileDirectionProvider);

    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: _mobileDirectionProviderStatus
                ? deviceWidth * 0.6
                : deviceWidth * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(180),
                      child: AssetsImage(
                        heightValue:
                            _mobileDirectionProviderStatus ? 0.4 : 0.15,
                        imagePath: "about/profile_image.jpeg",
                      ),
                    ),
                    WidthSizedBox(targetSize: deviceWidth, value: 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BodyText(
                          text: "Yuta Toba",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontFamily: '源ノ角ゴシック VF',
                          fontSize: deviceWidth * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.005),
                        BodyText(
                          text: "鳥羽悠太",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontFamily: '源ノ角ゴシック VF',
                          fontSize: deviceWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                        HeightSizedBox(targetSize: deviceHeight, value: 0.02),
                        HighPaddingText(
                          text: "Vantanテックフォードアカデミー\n専門学部 IT総合学科 UI/UXクラス",
                          color: const Color.fromRGBO(0, 0, 0, 0.8),
                          fontSize: deviceWidth * 0.02,
                          fontWeight: FontWeight.normal,
                          fontFamily: "源ノ角ゴシック VF",
                          textAlign: TextAlign.start,
                          paddingValue: 1.5,
                        ),
                      ],
                    ),
                  ],
                ),
                HeightSizedBox(
                    targetSize: deviceHeight,
                    value: _mobileDirectionProviderStatus ? 0.04 : 0.02),
                // 強み
                SmallTitleUnderline(
                  smallTitle: '強み',
                  sizeValue: _mobileDirectionProviderStatus ? 0.075 : 0.035,
                  lineLength: _mobileDirectionProviderStatus
                      ? deviceWidth * 0.5
                      : deviceWidth * 0.6,
                  paddingValue: _mobileDirectionProviderStatus ? 0.01 : 0.005,
                  alignment: CrossAxisAlignment.center,
                ),
                HeightSizedBox(
                    targetSize: deviceHeight,
                    value: _mobileDirectionProviderStatus ? 0.06 : 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // 戦略
                    Column(
                      children: [
                        const StrengthTopic(
                          topicTitle: '戦略',
                          icon: Icons.search,
                        ),
                        FiveLevelEvaluation(
                          one: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          two: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          three: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          four: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          five: FalseCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color(0xFF919191),
                          ),
                        )
                      ],
                    ),
                    // 表層
                    Column(
                      children: [
                        const StrengthTopic(
                          topicTitle: '表層',
                          icon: Icons.brush,
                        ),
                        FiveLevelEvaluation(
                          one: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          two: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          three: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          four: FalseCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color(0xFF919191),
                          ),
                          five: FalseCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color(0xFF919191),
                          ),
                        )
                      ],
                    ),
                    // 技術
                    Column(
                      children: [
                        const StrengthTopic(
                          topicTitle: '技術',
                          icon: Icons.computer,
                        ),
                        FiveLevelEvaluation(
                          one: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          two: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          three: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          four: TrueCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                          ),
                          five: FalseCircle(
                            sizeValue:
                                _mobileDirectionProviderStatus ? 0.035 : 0.018,
                            color: const Color(0xFF919191),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                HeightSizedBox(
                    targetSize: deviceHeight,
                    value: _mobileDirectionProviderStatus ? 0.08 : 0.04),
                // スキル
                SmallTitleUnderline(
                  smallTitle: 'スキル',
                  sizeValue: _mobileDirectionProviderStatus ? 0.075 : 0.035,
                  lineLength: _mobileDirectionProviderStatus
                      ? deviceWidth * 0.55
                      : deviceWidth * 0.75,
                  paddingValue: _mobileDirectionProviderStatus ? 0.01 : 0.005,
                  alignment: CrossAxisAlignment.center,
                ),
                HeightSizedBox(
                    targetSize: deviceHeight,
                    value: _mobileDirectionProviderStatus ? 0.06 : 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AboutSkillText(
                      text: 'Ai',
                      sizeValue: _mobileDirectionProviderStatus ? 0.12 : 0.06,
                      fontValue: _mobileDirectionProviderStatus ? 0.06 : 0.03,
                      skillName: "illustorator",
                      skillDiscriptions: '基本操作',
                    ),
                    AboutSkillText(
                      text: 'Ps',
                      sizeValue: _mobileDirectionProviderStatus ? 0.12 : 0.06,
                      fontValue: _mobileDirectionProviderStatus ? 0.06 : 0.03,
                      skillName: "Photoshop",
                      skillDiscriptions: '基本操作',
                    ),
                    AboutSkillText(
                      text: 'Xd',
                      sizeValue: _mobileDirectionProviderStatus ? 0.12 : 0.06,
                      fontValue: _mobileDirectionProviderStatus ? 0.06 : 0.03,
                      skillName: "Xd",
                      skillDiscriptions: '基本操作',
                    ),
                    AboutSkillIcon(
                      sizeValue: _mobileDirectionProviderStatus ? 0.12 : 0.06,
                      imageValue: _mobileDirectionProviderStatus ? 0.07 : 0.035,
                      imagePath: 'icon/figma.svg',
                      skillName: "Figma",
                      skillDiscriptions: '実務経験\n1年',
                    ),
                    AboutSkillIcon(
                      sizeValue: _mobileDirectionProviderStatus ? 0.12 : 0.06,
                      imageValue: _mobileDirectionProviderStatus ? 0.07 : 0.035,
                      imagePath: 'icon/flutter.svg',
                      skillName: "Flutter",
                      skillDiscriptions: 'アプリ\nリリース',
                    ),
                    AboutSkillIcon(
                      sizeValue: _mobileDirectionProviderStatus ? 0.12 : 0.06,
                      imageValue: _mobileDirectionProviderStatus ? 0.07 : 0.035,
                      imagePath: 'icon/python.svg',
                      skillName: "Python",
                      skillDiscriptions: 'Webサイト\n制作可能',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
