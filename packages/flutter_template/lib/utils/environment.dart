import 'dart:io' show Platform;

class Environment {
  static const flavor = String.fromEnvironment('FLAVOR');
  static const enablePreview = String.fromEnvironment('PREVIEW');
}
