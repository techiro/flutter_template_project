# flutter_template

## Getting Started

```
git clone https://github.com/techiro/flutter_template_project.git
cd flutter_template_project
make setup
cd packages/flutter_template
make setup
make run-dev

```

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
