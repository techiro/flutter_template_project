class Environment {
  static const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'prod');
  static const enablePreview =
      String.fromEnvironment('PREVIEW', defaultValue: 'false');
}
