enum Flavor { dev, stg, prod }

class Constants {
  const Constants._({required this.baseUrl});

  factory Constants.of() {
    switch (flavor) {
      case Flavor.dev:
        return Constants._dev();
      case Flavor.stg:
        return Constants._stg();
      case Flavor.prod:
      default:
        return Constants._prod();
    }
  }

  factory Constants._dev() {
    return const Constants._(baseUrl: 'http://dev');
  }
  factory Constants._stg() {
    return const Constants._(baseUrl: 'http://std');
  }

  factory Constants._prod() {
    return const Constants._(baseUrl: 'http://prod');
  }

  /// エンドポイント
  final String baseUrl;

  /// フレーバー
  static Flavor get flavor => Flavor.values.byName(
        const String.fromEnvironment('FLAVOR', defaultValue: 'dev'),
      );

  /// Device Previewを有効化するかどうか
  static bool get enablePreview =>
      const bool.fromEnvironment('PREVIEW', defaultValue: false);
}
