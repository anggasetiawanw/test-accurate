import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        // UserHomePage
        AutoRoute(page: UserHomeRoute.page, initial: true, path: '/user'),
        // AddUserPage
        AutoRoute(page: AddUserRoute.page, path: '/add-user'),
      ];
}
