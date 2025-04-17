#!make

# 追加：
# asdfが古い場合は、asdfを更新する
# brewをinstall後に、brewのechoを実行する

setup:
	brew install asdf cocoapods
	echo -e '\n. export PATH="${ASDF_DATA_DIR:=$HOME/.asdf}/shims:$PATH"' >> ~/.zshrc
	asdf plugin add flutter
	asdf plugin add java
	sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
	sudo xcodebuild -runFirstLaunch

install:
	asdf install
	flutter pub get

flavor:
	dart run flutter_flavorizr -p android:buildGradle,android:flavorizrGradle

gen-splash:
	dart run flutter_native_splash:create

gen-icon:
	dart run flutter_launcher_icons

build-runner:
	dart run build_runner clean
	dart run build_runner build --delete-conflicting-outputs

build-runner-watch:
	dart run build_runner watch --delete-conflicting-outputs

slang:
	dart run slang

slang-watch:
	dart run slang watch


lint-fix:
	dart run import_sorter:main
	dart run import_path_converter:main
	dart fix --apply
	dart format .
	flutter analyze

clean:
	flutter clean
	flutter pub get

create-package:
	cd packages && flutter create --template=package $(name)

create-plugin:
	cd packages && flutter create --org com.dentsusoken --template=plugin --platforms=android,ios $(name)
