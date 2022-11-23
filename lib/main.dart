import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

import 'firebase_options.dart';
import 'view/home_page/appbar.dart';
import 'view/home_page/about_page.dart';
import 'view/home_page/works_page.dart';

import 'package:portfolio_web/view/works_topics/tomony_page.dart';
import 'view/works_topics/shusseki_page.dart';
import 'view/works_topics/pochipochi_page.dart';
import 'view/works_topics/otherworks.dart';
import 'utils/extract_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.android,
    options: DefaultFirebaseOptions.web,
  );
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  @override
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Portfolio Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Debugマークを無効
      debugShowCheckedModeBanner: false,
      // go routerの有効処理
      routeInformationProvider:
          ref.watch(_routerProvider).routeInformationProvider,
      routeInformationParser: ref.watch(_routerProvider).routeInformationParser,
      routerDelegate: ref.watch(_routerProvider).routerDelegate,
    );
  }

  // 遷移のRoute設計(ディレクトリもここに依存)
  final _routerProvider = Provider(
    (ref) => GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              buildPageWithAnimation(
            _MyHomePage(),
          ),
          routes: <GoRoute>[
            GoRoute(
              path: 'works',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  buildPageWithAnimation(
                WorksPage(),
              ),
            ),
            GoRoute(
              path: 'tomony',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  buildPageWithAnimation(
                const Tomony(),
              ),
            ),
            GoRoute(
              path: 'shusseki',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  buildPageWithAnimation(const Shusseki()),
            ),
            GoRoute(
              path: 'pochipochi',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  buildPageWithAnimation(Pochipochi()),
            ),
            GoRoute(
              path: 'otherWorks',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  buildPageWithAnimation(const OtherWorks()),
            ),
          ],
        ),
      ],
    ),
  );
}

class _MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(
          backgroundColor: Color.fromRGBO(3, 144, 126, 1),
        ),
      ),
      body: AboutPage(),
    );
  }
}
