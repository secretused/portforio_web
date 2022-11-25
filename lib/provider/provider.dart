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
