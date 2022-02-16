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
packages以下にアプリを配置

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

## Architecture

- ・・・
