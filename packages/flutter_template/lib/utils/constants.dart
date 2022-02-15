enum Flavor { dev, stg, prod }

class Constants {
  const Constants._({required this.baseUrl});

  factory Constants.of() {
    switch (flavor) {
      case Flavor.dev:
        return Constants._dev();
      case Flavor.stg:
        return Constants._std();
      case Flavor.prod:
      default:
        return Constants._prod();
    }
  }

  factory Constants._dev() {
    return const Constants._(baseUrl: 'http://dev');
  }
  factory Constants._std() {
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
}
