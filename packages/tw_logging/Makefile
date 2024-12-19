#!make

build-runner:
	dart run build_runner clean
	dart run build_runner build --delete-conflicting-outputs

build-runner-watch:
	dart run build_runner watch --delete-conflicting-outputs

lint-fix:
	flutter pub run import_sorter:main
	flutter pub run import_path_converter:main
	dart fix --apply
	dart format .
	flutter analyze

clean:
	flutter clean
	flutter pub get
