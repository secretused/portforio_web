import 'package:flutter_riverpod/flutter_riverpod.dart';

// WorksPageアニメーション
final worksTopicProvider = StateProvider((ref) => false);

// 外部ファイル アイコン
final imagePathProvider = StateProvider((ref) => "");
final iconButtonProvider = StateProvider((ref) => false);

// 目次Works
final appNameProvider = StateProvider((ref) => "");
final worksTopicContentsProvider = StateProvider((_) => false);

// WorksPageアニメーション
final imageLinkProvider = StateProvider((ref) => false);

// Profile SNS URl
const String twitteUrl = "https://twitter.com/uta_app_vta";
const String githubUrl = "https://github.com/secretused";
const String qiitaUrl = "https://qiita.com/utasan_com";
