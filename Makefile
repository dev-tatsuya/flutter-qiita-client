.PHONY: clean
clean:
	fvm flutter clean

.PHONY: test
test:
	fvm flutter test $(path)

.PHONY: update golden
golden:
	fvm flutter test --update-goldens $(path)

.PHONY: build runner
runner:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs
