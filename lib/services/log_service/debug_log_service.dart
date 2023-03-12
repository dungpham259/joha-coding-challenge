import 'package:injectable/injectable.dart';
import 'package:jaho_coding_challenge/services/log_service/log_service.dart';
import 'package:logger/logger.dart';

@Injectable(as: LogService)
class DebugLogService implements LogService {
  DebugLogService({Logger? logger}) {
    _logger = logger ??
        Logger(
          printer: PrettyPrinter(),
        );
  }
  late final Logger _logger;

  @override
  void e(String message, dynamic e, StackTrace? stack) {
    _logger.e(message, e, stack);
  }
}
