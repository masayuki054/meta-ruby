MYHOME = ../
ORG = $(MYHOME)/org/
SITE = $(MYHOME)/docs/
DIR = ./
SHELL = zsh
DATE = `date`

HTMLS = index.html \
lects.html \
ruby.html \
emacs.html \
oo.html

all: $(HTMLS)
	git push -u origin master

renewal: 
	touch *.org
	touch */*.org
	make all

index.html: info/common-header.org 
lects.html: $(wildcard lects/*.org) info/common-header.org 
ruby.html: $(wildcard ruby/*.org) info/common-header.org 
emacs.html: $(wildcard emacs/*.org) info/common-header.org 
oo.html: $(wildcard oo/*.org) info/common-header.org 
meta-ruby.html: $(wildcard meta-ruby/*.org) info/common-header.org 
note.html: $(wildcard note/*.org) info/common-header.org 

.SUFFIXES: .org .html
.org.html: info/common-header.org 
	$(HOME)/bin/org2html $<
	sed -e 's/http:\/\//https:\/\//g' $@ > $(SITE)/$@
#	cp -p $@  $(SITE)/$@
	git add  $(SITE)/$@ 
	git commit -a -m "daily $(DATE)"

.PHONY: clean
clean:
	rm -f *.html
	rm -f *~ */*~
