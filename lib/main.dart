import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'utils/Appbar_Widget/appbar.dart';
import 'View/HomePage/about_page.dart';
import 'View/HomePage/works_page.dart';

import 'package:portfolio_web/View/Works/tomony_page.dart';
import 'View/Works/shusseki_page.dart';
import 'View/Works/pochipochi_page.dart';
import 'View/Works/otherworks.dart';

final statusProvider = StateProvider((_) => false);

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Portfolio Web',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // Debugマークを無効
        debugShowCheckedModeBanner: false,
        // go routerの有効処理
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );
  // 遷移のRoute設計(ディレクトリもここに依存)
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildPageWithAnimation(
          _MyHomePage(),
        ),
        routes: <GoRoute>[
          GoRoute(
            path: 'tomony',
            pageBuilder: (BuildContext context, GoRouterState state) =>
                buildPageWithAnimation(Tomony()),
          ),
          GoRoute(
            path: 'shusseki',
            pageBuilder: (BuildContext context, GoRouterState state) =>
                buildPageWithAnimation(const Shusseki()),
          ),
          GoRoute(
            path: 'pochipochi',
            pageBuilder: (BuildContext context, GoRouterState state) =>
                buildPageWithAnimation(const Pochipochi()),
          ),
          GoRoute(
            path: 'otherWorks',
            pageBuilder: (BuildContext context, GoRouterState state) =>
                buildPageWithAnimation(const OtherWorks()),
          ),
        ],
      ),
    ],
  );
}

class _MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var appbarHeight = AppBar().preferredSize.height;

    final _status = ref.watch(statusProvider);

    return Scaffold(
      appBar: Appbar(
        deviceWidth: deviceWidth,
        appbarHeight: appbarHeight,
        appbarRef: ref,
        status: _status,
      ),
      body: _status
          ? WorksPage(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              worksRef: ref,
            )
          : AboutPage(
              deviceHeight: deviceHeight,
              deviceWidth: deviceWidth,
              appbarHeight: appbarHeight,
              aboutRef: ref,
              status: _status,
            ),
    );
  }
}

// Fade Navigation Animation
CustomTransitionPage<void> buildPageWithAnimation(Widget page) {
  return CustomTransitionPage<void>(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const double begin = 0.0;
      const double end = 1.0;
      final Animatable<double> tween = Tween(begin: begin, end: end)
          .chain(CurveTween(curve: Curves.easeInOut));
      final Animation<double> doubleAnimation = animation.drive(tween);
      return FadeTransition(
        opacity: doubleAnimation,
        child: child,
      );
    },
  );
}
