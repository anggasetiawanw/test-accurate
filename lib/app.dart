import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/app_router.dart';
import 'core/router/oberservers/app_router_observers.dart';
import 'features/user/presentation/blocs/city/city_bloc.dart';
import 'features/user/presentation/blocs/users/user_bloc.dart';
import 'utils/screen_util.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final _router = AppRouter();

  @override
  Widget build(BuildContext context) => ScreenInit(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => UserBloc()),
            BlocProvider(create: (_) => CityBloc()),
          ],
          child: MaterialApp.router(
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
        ),
      );
}
