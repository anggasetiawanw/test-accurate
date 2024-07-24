import 'dart:async';

import 'package:test_accurate/bootstrap.dart';

import 'app.dart';
import 'core/di/service_locator.dart';

FutureOr<void> main() async {
  bootstrap(
    () async {
      await Future.wait([configureDependencies()]);
      return const App();
    },
  );
}
