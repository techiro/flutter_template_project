
################################################################################################
## 基本コマンド
################################################################################################
# setup
.PHONY: setup
setup:
	dart pub global activate fvm
	fvm install
	dart pub global activate flutter_gen
	npm i