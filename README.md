# flutter_template

## Getting Started

```
git clone https://github.com/techiro/flutter_template_project.git
cd flutter_template_project
make setup
cd packages
cp -r flutter_template/ 'your_app_name'
cd your_app_name
make setup
make run-dev
```

Replace BundleID name `com.example.flutterTemplate` to `your domain`
Do a full-text search and replace.

## Replace flutter_template app

```
cp -r flutter_template/ 'your_app_name'
```

## Replace dependencies package name

フラッターアプリのパッケージ依存は,pubspec.yaml に依存しています。
まず、`pubspec.yaml`を開き、依存を書き換えてください。

```
- name: 'flutter_template'
+ name: 'your_app_name'
```

次に、flutter_template で全文検索を行い`your_app_name`に置き換えてください。
Replace `flutter_template` to `your_app_name`

```
example) main.dart
- import 'package:flutter_template/theme/theme_data_ex.dart';
- import 'package:flutter_template/utils/environment.dart';
+ import 'package:your_app_name/theme/theme_data_ex.dart';
+ import 'package:your_app_name/utils/environment.dart';
```

## Replace your app bundle id `com.**.**app`

- com.example.flutter_template
- com.example.flutterTemplate

## Replaec your app name `**app`

- F_Template
- f_template

## フォルダ構成

新しいパッケージを追加する場合を考慮したフォルダ構成を作成。
packages 以下にアプリを配置

参考: https://dash-overflow.net/articles/getting_started/#:~:text=step%201%3A%20(optional)%20use%20the%20%2Fpackages%20folder%20convention

```
.git/
.gitignore
packages/
  my_project/
    pubspec.yaml
    lib/
    ...
  my_first_package/
    pubspec.yaml
    ...
```

## library

| ファイル              | 説明                         | 補足                                                                                                           |
| :-------------------- | :--------------------------- | :------------------------------------------------------------------------------------------------------------- |
| analysis_options.yaml | 静的解析ファイル厳しめの設定 | 参考: https://medium.com/flutter-jp/analysis-b8dbb19d3978, https://dash-overflow.net/articles/getting_started/ |
| fvm                   | flutter のバージョン管理     | 参考: https://zenn.dev/riscait/articles/flutter-version-management                                             |
| AutoRouter            | FlutterNavigator2.0          | 参考: https://coletiv.com/blog/flutter-navigator-2.0-made-easy-with-auto-router/                               |

### fvm

Android Studio の IDE をもし利用する場合は,追加で設定を行う必要がある。
参考: https://fvm.app/docs/getting_started/configuration#android-studio

### flutter_gen

アセットパス文字列を直接使用しないために,flutter_gen を使用する。
PNG や SVG に対応。フォントも対応。

#### 新しいフォントを Google Fonts からダウンロード

https://docs.flutter.dev/cookbook/design/fonts
例) Raleway
https://fonts.google.com/specimen/Raleway?preview.text=Raleway&preview.text_type=custom&query=Raleway

### husky + lint-staged

git commit 時にコードフォーマットを行う。

### l10n

Localizations in Flutter

参考:

- https://docs.flutter.dev/development/accessibility-and-localization/internationalization
- https://zenn.dev/ga_ku/articles/1ca06e77125e22

### AutoRouter

Auto Navigation Library
参考:

- https://coletiv.com/blog/flutter-navigator-2.0-made-easy-with-auto-router/
- https://pub.dev/packages/auto_route#using-part-builder--new-in-version-300

## Architecture

- ・・・

## Riverpod

### 命名規則について

https://medium.com/flutter-jp/riverpod-naming-5031504fc692
