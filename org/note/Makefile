.SUFFIXES: .org .html .ob
.org.html: 
	~/bin/org2html $<

.ob.org:
	~/COMM/bin/babel_expand_include.rb $< > $@
	org_tangle $@

all: ruby-note.html oo-note.html emacs-note.html org-note.html note.html

index.html: index.org


.PHONY: clean
clean:
	rm *.html

