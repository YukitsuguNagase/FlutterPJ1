import 'package:flutter/foundation.dart';

void logError(dynamic error, [StackTrace? stack]) {
  debugPrint('Error: $error');
  if (stack != null) debugPrint(stack.toString());
}
