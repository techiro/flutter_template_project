# flutter_template

## Getting Started
```
make setup
```

## フォルダ構成
新しいパッケージを追加する場合を考慮したフォルダ構成を作成。
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
| fvm                   | flutterのバージョン管理      | 参考: https://zenn.dev/riscait/articles/flutter-version-management                                             |


### fvm
Android StudioのIDEをもし利用する場合は,追加で設定を行う必要がある。
参考: https://fvm.app/docs/getting_started/configuration#android-studio

### flutter_gen
アセットパス文字列を直接使用しないために,flutter_genを使用する。
PNGやSVGに対応。フォントも対応。
#### 新しいフォントをGoogle Fontsからダウンロード
https://docs.flutter.dev/cookbook/design/fonts
例) Raleway
https://fonts.google.com/specimen/Raleway?preview.text=Raleway&preview.text_type=custom&query=Raleway
