fetch:
	./scripts/fetch.sh

clean:
	./scripts/clean.sh

gen-l10n:
	./scripts/gen_l10n.sh

gen-ui-kit-models:
	cd ./packages/ui_kit && make gen-models