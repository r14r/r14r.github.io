#
#
#

BOOTSTRAP_VERSION  := 5.0.0-alpha1
BOOTSTRAP_VERSION  := 4.5.2
BOOTSTRAP_FILE_SRC := bootstrap-$(BOOTSTRAP_VERSION)-dist
BOOTSTRAP_LINK     := https://github.com/twbs/bootstrap/releases/download/v$(BOOTSTRAP_VERSION)/$(BOOTSTRAP_FILE_SRC).zip
BOOTSTRAP_FLDR_SRC := install/bootstrap
BOOTSTRAP_FLDR_DST := assets/vendor/bootstrap/$(BOOTSTRAP_VERSION)
BOOTSTRAP_FLDR_TMP := $(BOOTSTRAP_FLDR_DST)/tmp


# Download the compressed, production jQuery 3.5.1			https://code.jquery.com/jquery-3.5.1.min.js
# Download the uncompressed, development jQuery 3.5.1		https://code.jquery.com/jquery-3.5.1.js
# Download the map file for jQuery 3.5.1					https://code.jquery.com/jquery-3.5.1.min.map

JQUERY_VERSION  := 3.5.1
JQUERY_FILE_SRC := jquery.$(JQUERY_VERSION)
JQUERY_LINK     := https://code.jquery.com/jquery-$(JQUERY_VERSION)
JQUERY_FLDR_SRC := install/jquery
JQUERY_FLDR_DST := assets/vendor/jquery/$(JQUERY_VERSION)

#
THREE_LINK      := https://github.com/mrdoob/three.js/archive/master.zip
SCROLL_OUT_LINK := https://github.com/scroll-out/scroll-out/archive/master.zip

#
#
#
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

#
#
#
download_bootstrap:	# Install Bootstrap from Source
	mkdir -p $(BOOTSTRAP_FLDR_SRC)
	wget -q  $(BOOTSTRAP_LINK) -O     $(BOOTSTRAP_FLDR_SRC)/$(BOOTSTRAP_FILE_SRC).zip
	rm -rf   $(BOOTSTRAP_FLDR_DST)
	mkdir -p $(BOOTSTRAP_FLDR_TMP)
	unzip -q $(BOOTSTRAP_FLDR_SRC)/$(BOOTSTRAP_FILE_SRC).zip -d $(BOOTSTRAP_FLDR_TMP)
	mv       $(BOOTSTRAP_FLDR_TMP)/$(BOOTSTRAP_FILE_SRC)/*      $(BOOTSTRAP_FLDR_DST)
	rm -rf   $(BOOTSTRAP_FLDR_TMP)


download_jquery:	# Install jQuery    from Source
	rm -rf   $(JQUERY_FLDR_SRC)
	mkdir -p $(JQUERY_FLDR_SRC)
	rm -rf   $(JQUERY_FLDR_DST)
	mkdir -p  $(JQUERY_FLDR_DST)

	wget -q  $(JQUERY_LINK).min.js  -O $(JQUERY_FLDR_DST)/jquery.min.js
	wget -q  $(JQUERY_LINK).js      -O $(JQUERY_FLDR_DST)/jquery.js
	wget -q  $(JQUERY_LINK).min.map -O $(JQUERY_FLDR_DST)/jquery.min.map