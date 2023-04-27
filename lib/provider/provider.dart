import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/project_widget/about_widget.dart';

// WorksPageアニメーション
final worksTopicProvider = StateProvider((ref) => false);

// Worksジャンルインデックス
final worksGenreChangeProvider = StateProvider<int>((ref) => 0);
final worksGenreIndexProvider = StateProvider((ref) => 0);
final worksGenreHoverProvider = StateProvider((_) => false);

// 外部ファイル アイコン
final imagePathProvider = StateProvider((ref) => "");
final iconButtonProvider = StateProvider((ref) => false);

// 目次Works
final appNameProvider = StateProvider((ref) => "");
final worksTopicContentsProvider = StateProvider((_) => false);

// WorksPageアニメーション
final imageLinkProvider = StateProvider((ref) => false);

// モバイル 縦横
final mobileDirectionProvider = Provider<bool>((ref) => false);

// DialogImageWidgetパス名
final dialogImagePathProvider = StateProvider((ref) => "");

// Profile SNS URl
const String twitteUrl = "https://twitter.com/uta_app_vta";
const String githubUrl = "https://github.com/secretused";
const String qiitaUrl = "https://qiita.com/utasan_com";

List<List> worksWidgetList = [
  const [
    // ServiceDesign
    WorksTopicContents(
      index: '01',
      topicColor: Color(0xFF87C495),
      imagePath: 'assets/about/tomony_display.png',
      appName: 'Tomony',
      appNameSize: 0.05,
      fontName: "Arial Black",
      appDisc: '男性向けの生理のお悩み質問相談',
      path: '/tomony',
    ),
    WorksTopicContents(
      index: '02',
      topicColor: Color(0xFF379BA5),
      imagePath: 'assets/about/shusseki_display.png',
      appName: 'シュッ席',
      appNameSize: 0.05,
      fontName: "Noto Sans JP",
      appDisc: 'QRコードで簡単入館',
      path: '/shusseki',
    ),
    WorksTopicContents(
      index: '03',
      topicColor: Color(0xFFEBAA14),
      imagePath: 'assets/about/pochipochi_display.png',
      appName: 'ぽちぽち',
      appNameSize: 0.05,
      fontName: "しあさって",
      appDisc: '長く使える幼児向け音声再生アプリ',
      path: '/pochipochi',
    ),
  ],
  const [
    // WebDesign
    WorksTopicContents(
      index: '01',
      topicColor: Color(0xFF64CCF0),
      imagePath: 'assets/about/nzigen_corporate_display.png',
      appName: 'エヌ次元株式会社',
      appNameSize: 0.04,
      fontName: "Noto Sans JP",
      appDisc: 'ターゲットを意識したHPのUI改修',
      path: '/nzigen_corporate',
    ),
  ],
  const [
    // OtherDesign
    WorksTopicContents(
      index: '01',
      topicColor: Color(0xFF726353),
      imagePath: 'assets/about/business_contest_display.png',
      appName: '新・学校の七不思議',
      appNameSize: 0.04,
      fontName: "怨霊",
      appDisc: 'ビジネスコンテスト応募作品',
      path: '/business_contest',
    ),
    WorksTopicContents(
      index: '02',
      topicColor: Color(0xFF677790),
      imagePath: 'assets/about/nft_display.png',
      appName: 'Contradicting World',
      appNameSize: 0.04,
      fontName: "Arial Black",
      appDisc: 'NFT販売',
      path: '/nft',
    ),
    WorksTopicContents(
      index: '03',
      topicColor: Color(0xFFC7814B),
      imagePath: 'assets/about/kindle_display.png',
      appName: '短編小説集「混沌」',
      appNameSize: 0.04,
      fontName: "Noto Sans JP",
      appDisc: 'Kindle 短編小説集 出版',
      path: '/kindle',
    ),
  ],
];
