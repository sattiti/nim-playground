NIM=nim

.PHONY: run
run: *.nim
	@$(NIM) c -r $(FILE)

.PHONY: release
release: *.nim
	@$(NIM) c -d:release $(FILE)

.PHONY: watch
watch: *.nim
	@watch -n 1 -e $(NIM) c -r $(FILE)
