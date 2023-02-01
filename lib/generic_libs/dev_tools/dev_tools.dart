// ignore_for_file: public_member_api_docs, sort_constructors_first
library dev_tools;

class DevTools {
  final bool allowLoggingGlobally;

  DevTools({
    required this.allowLoggingGlobally,
  });

  static late DevTools instance;

  static init({bool allowLoggingGlobally = true}) {
    instance = DevTools(allowLoggingGlobally: allowLoggingGlobally);
    return instance;
  }
}
