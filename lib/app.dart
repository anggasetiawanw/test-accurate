import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'core/router/app_router.dart';
import 'core/router/oberservers/app_router_observers.dart';
import 'utils/screen_util.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final _router = AppRouter();

  @override
  Widget build(BuildContext context) => ScreenInit(
        builder: (_) => MaterialApp.router(
          title: 'App Test Accurate',
          debugShowCheckedModeBanner: false,
          routerDelegate: AutoRouterDelegate(
            _router,
            navigatorObservers: () => [
              AppRouteObserver(),
            ],
          ),
          routeInformationParser: _router.defaultRouteParser(),
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.white,
          ),
        ),
      );
}
