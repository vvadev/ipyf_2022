import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shablon_v1/routes.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      );

  final _router = GoRouter(
    routes: kRoutes
        .map(
          (e) => GoRoute(
            path: e.address,
            pageBuilder: (context, state) => CustomTransitionPage<void>(
              key: state.pageKey,
              child: e.widget,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      FadeTransition(opacity: animation, child: child),
            ),
          ),
        )
        .toList(),
  );
}
