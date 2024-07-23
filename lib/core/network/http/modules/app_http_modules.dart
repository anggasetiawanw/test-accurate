import 'package:injectable/injectable.dart';

import '../../../di/service_locator.dart';
import '../http_client.dart';
import '../http_module.dart';

@LazySingleton()
class AppHttpModule extends HttpModule {
  AppHttpModule() : super(getIt<HttpClient>());
}
