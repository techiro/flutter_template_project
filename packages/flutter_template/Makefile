################################################################################################
## 環境変数 flavor
################################################################################################
DEV_FLAVOR := develop
STG_FLAVOR := staging
PROD_FLAVOR := product

################################################################################################
## 基本コマンド
################################################################################################

# packages install
.PHONY: clean
clean:
	fvm flutter clean

# packages install
.PHONY: dependencies
dependencies:
	fvm flutter pub get

# build-runner
.PHONY: build-runner
build-runner:
	fvm flutter packages pub run build_runner build
