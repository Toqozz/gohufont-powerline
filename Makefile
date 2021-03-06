PREFIX := /usr
fonts: gohup-uni-11.pcf.gz gohup-uni-11b.pcf.gz

%.pcf.gz: %.bdf
	bdftopcf $^ | gzip > $@

install: fonts
	install -dm755 $(DESTDIR)$(PREFIX)/share/fonts/misc/
	install -m644 *.pcf.gz $(DESTDIR)$(PREFIX)/share/fonts/misc/
