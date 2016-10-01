all:
	make index.html

index.html: index.org ../../info/common-header.org plan.org

.SUFFIXES: .org .html
.org.html:
	org2html $<

resume.org:
	touch $@

response.org:
	touch $@

.PHONY: clean
clean:
	rm -f *.html


