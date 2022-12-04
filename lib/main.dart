import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';
import 'utils/mobile_widget/about_widgrt_mobile.dart';
import 'view/web/home_page_web/appbar_web.dart';
import 'view/web/home_page_web/about_page_web.dart';
import 'view/web/home_page_web/works_page_web.dart';

import 'package:portfolio_web/view/mobile/home_page_mobile/appbar_mobile.dart';

import 'view/ipad/home_page_ipad/about_page_ipad.dart';
import 'view/mobile/home_page_mobile/about_page_mobile.dart';

import 'package:portfolio_web/view/web/works_topics_web/tomony_page_web.dart';
import 'view/web/works_topics_web/shusseki_page_web.dart';
import 'view/web/works_topics_web/pochipochi_page_web.dart';
import 'view/web/works_topics_web/otherworks_page_web.dart';
import 'utils/extract_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
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

      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
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
                  buildPageWithAnimation(
                const Shusseki(),
              ),
            ),
            GoRoute(
              path: 'pochipochi',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  buildPageWithAnimation(
                const Pochipochi(),
              ),
            ),
            GoRoute(
              path: 'otherWorks',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  buildPageWithAnimation(
                const OtherWorks(),
              ),
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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1199) {
          // PC
          return const Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: CustomAppbarWeb(
                backgroundColor: Color.fromRGBO(3, 144, 126, 1),
              ),
            ),
            body: AboutPageWeb(),
          );
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          // iPad & iPhone(横)
          return const Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: CustomAppbarMobile(
                // backgroundColor: Color.fromRGBO(3, 144, 126, 1),
                backgroundColor: Colors.red,
              ),
            ),
            endDrawer: DrawerWidget(),
            body: AboutPageIpad(),
          );
        } else {
          //iPhone(縦)
          return const Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: CustomAppbarMobile(
                backgroundColor: Color.fromRGBO(3, 144, 126, 1),
              ),
            ),
            endDrawer: DrawerWidget(),
            body: AboutPageIphone(),
          );
        }
      },
    );
  }
}