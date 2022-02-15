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
    return const Constants._(baseUrl: 'http://stg');
  }

  factory Constants._prod() {
    return const Constants._(baseUrl: 'http://prod');
  }

  /// エンドポイント
  final String baseUrl;

  /// フレーバー const 指定をしないといけない。 #https://github.com/flutter/flutter/issues/55870
  static const flavorString =
      String.fromEnvironment('FLAVOR', defaultValue: 'dev');

  static Flavor get flavor => Flavor.values.byName(flavorString);

  /// Device Previewを有効化するかどうか
  static const enablePreview =
      bool.fromEnvironment('PREVIEW', defaultValue: false);
}
