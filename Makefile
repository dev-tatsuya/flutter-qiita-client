.PHONY: clean
clean:
	fvm flutter clean

.PHONY: test
test:
	fvm flutter test $(path)

.PHONY: update golden
golden:
	fvm flutter test --update-goldens $(path)

.PHONY: build runner build
gen:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: build runner watch
watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs
