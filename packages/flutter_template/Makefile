################################################################################################
## 環境変数 flavor
################################################################################################
DEV_FLAVOR := develop
STG_FLAVOR := staging
PROD_FLAVOR := product

################################################################################################
## 基本コマンド
################################################################################################
# setup
.PHONY: setup
setup:
	yarn init -y; yarn add -D prettier
# packages install
.PHONY: clean
clean:
	fvm flutter clean

# packages install
.PHONY: dependencies
dependencies:
	fvm flutter pub get
	fvm flutter gen-l10n

# build-runner
.PHONY: build-runner
build-runner:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

# build-runner-watch
.PHONY: build-runner-watch
build-runner-watch:
	fvm flutter packages pub run build_runner watch --delete-conflicting-outputs

# run
.PHONY: run
run:
	fvm flutter run