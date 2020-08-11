default:
	@grep ":\s+#"

build:
	./run_build

serve:
	jekyll serve --watch --incremental

deploy:
	git add -A
	git commit -m "change: update"
	git push

run: serve
	#
