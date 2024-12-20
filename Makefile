#!make
init:
	brew install asdf cocoapods
	echo -e '\n. $(brew --prefix asdf)/asdf.sh' >> ~/.zshrc
	asdf plugin add flutter
	sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
	sudo xcodebuild -runFirstLaunch

install:
	asdf install
	flutter pub get

flavor:
	dart run flutter_flavorizr

gen-splash:
	dart run flutter_native_splash:create --flavor dev
	dart run flutter_native_splash:create --flavor prod

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
