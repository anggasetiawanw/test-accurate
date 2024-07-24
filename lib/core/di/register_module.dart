import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../config/flavors.dart';
import '../log/simple_log_printer.dart';
import '../network/http/http_client.dart';
import '../network/http/http_settings.dart';

@module
abstract class RegisterModule {
  Logger get logger => Logger(
        printer: PrefixPrinter(
          SimpleLogPrinter(),
          error: 'Error -',
          debug: 'Log -',
          fatal: 'FatalError -',
          info: 'Info -',
          trace: 'Trace -',
          warning: 'Warning -',
        ),
      );

  HttpClient get httpClient => HttpClient.init(
        HttpSetting(
          baseUrl: F.baseUrl,
        ),
      );
}
