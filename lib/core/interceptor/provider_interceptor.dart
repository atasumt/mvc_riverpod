import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/helper/logger.dart';

class ProviderInterceptor extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger().d('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "${newValue.toString()}"
}''');
  }
}
