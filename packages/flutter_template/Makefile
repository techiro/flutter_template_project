################################################################################################
## 環境変数 flavor
################################################################################################
DEV_FLAVOR := dev
STG_FLAVOR := stg
PROD_FLAVOR := prod

################################################################################################
## 基本コマンド
################################################################################################
# setup
.PHONY: setup
setup:
	fvm flutter pub get
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

# run dev
.PHONY: run-dev
run-dev:
	fvm flutter run --dart-define=FLAVOR=${DEV_FLAVOR} --target lib/main.dart

# open-runner
.PHONY: open-runner
open-runner:
	open ios/Runner.xcworkspace

# icon
.PHONY: icon
icon:
	rm -rf ios/Runner/Assets.xcassets/AppIcon-${DEV_FLAVOR}.appiconset
	rm -rf ios/Runner/Assets.xcassets/AppIcon-${STG_FLAVOR}.appiconset
	rm -rf ios/Runner/Assets.xcassets/AppIcon-${PROD_FLAVOR}.appiconset
	rm -rf android/app/src/${DEV_FLAVOR}/res/mipmap**/
	rm -rf android/app/src/${STG_FLAVOR}/res/mipmap**/
	rm -rf android/app/src/${PROD_FLAVOR}/res/mipmap**/
	fvm flutter pub run flutter_launcher_icons:main