import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'View/HomePage/works_page.dart';
import 'View/HomePage/about_page.dart';
import 'appbar.dart';

final statusProvider = StateProvider((_) => false);

void main() {
  runApp(
    // Riverpodでデータを受け渡しが可能な状態にするために必要
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: _MyHomePageState(),
    );
  }

// Widget build(BuildContext context) => MaterialApp.router(
//       title: 'Portfolio Web',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       // Debugマークを無効
//       debugShowCheckedModeBanner: false,
//       // go routerの有効処理
//       routeInformationProvider: _router.routeInformationProvider,
//       routeInformationParser: _router.routeInformationParser,
//       routerDelegate: _router.routerDelegate,
//     );
// // 遷移のRoute設計(ディレクトリもここに依存)
// final GoRouter _router = GoRouter(
//   routes: <GoRoute>[
//     GoRoute(
//       path: '/',
//       pageBuilder: (BuildContext context, GoRouterState state) =>
//           buildPageWithAnimation(
//         const MyHomePage(title: ''),
//       ),
//       routes: <GoRoute>[
//         GoRoute(
//           path: 'works',
//           pageBuilder: (BuildContext context, GoRouterState state) =>
//               buildPageWithAnimation(
//             const WorksPage(),
//           ),
//         ),
//       ],
//     ),
//   ],
// );
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    var appbarHeight = AppBar().preferredSize.height;

    final _status = ref.watch(statusProvider);

    return Scaffold(
      appBar: Appbar(deviceWidth: deviceWidth, appbarHeight: appbarHeight),
      body: _status
          ? WorksPage(deviceHeight: deviceHeight, deviceWidth: deviceWidth)
          : AboutPage(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
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
