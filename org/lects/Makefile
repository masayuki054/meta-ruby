all:
	make index.html
	(cd 01; make )
	(cd 02; make )
	(cd 03; make )

index.html: index.org ../info/common-header.org contents.org
	org2html index.org

.PHONY: clean
clean:
	rm -f *.html
	rm -f */*.html

