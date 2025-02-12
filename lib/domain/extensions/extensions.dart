import 'package:flutter/foundation.dart';

extension DebugPrintExtension on String {
  void get dp => debugPrint(this);
}
