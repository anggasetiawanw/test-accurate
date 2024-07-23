// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:test_accurate/features/user/presentation/pages/add_user_page.dart'
    as _i1;
import 'package:test_accurate/features/user/presentation/pages/user_home_page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AddUserRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddUserPage(),
      );
    },
    UserHomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.UserHomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddUserPage]
class AddUserRoute extends _i3.PageRouteInfo<void> {
  const AddUserRoute({List<_i3.PageRouteInfo>? children})
      : super(
          AddUserRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddUserRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.UserHomePage]
class UserHomeRoute extends _i3.PageRouteInfo<void> {
  const UserHomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          UserHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserHomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
