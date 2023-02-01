import 'dart:developer' as developer;

import 'package:generic_libs/generic_libs/dev_tools/dev_tools.dart';

const String _$kFrameworkVersionIdentifier = "Generic_Libs";

/// Blue text
void logInfo(String msg) {
  developer.log('\x1B[34m$msg\x1B[0m', name: _$kFrameworkVersionIdentifier);
}

/// Green text
void logSuccess(String msg) {
  if (!DevTools.instance.allowLoggingGlobally) return;

  developer.log('\x1B[32m$msg\x1B[0m', name: _$kFrameworkVersionIdentifier);
}

/// Yellow text
void logWarning(String msg) {
  if (!DevTools.instance.allowLoggingGlobally) return;
  developer.log('\x1B[33m$msg\x1B[0m', name: _$kFrameworkVersionIdentifier);
}

/// Red text
void logError(String msg) {
  if (!DevTools.instance.allowLoggingGlobally) return;
  developer.log('\x1B[31m$msg\x1B[0m', name: _$kFrameworkVersionIdentifier);
}
