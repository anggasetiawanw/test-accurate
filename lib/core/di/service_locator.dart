import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_accurate/core/di/service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
Future<void> configureDependencies() async => $initGetIt(getIt);
