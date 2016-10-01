MYHOME = ../
ORG = $(MYHOME)/org/
SITE = $(MYHOME)/docs/
DIR = ./
SHELL = zsh
DATE = `date`

HTMLS = index.html \
lects.html \
ruby.html 

all: $(HTMLS)
	git push -u origin master

renewal: 
	touch *.org
	touch */*.org
	make all

index.html: 
lects.html: $(wildcard lects/*.org)
ruby.html: $(wildcard ruby/*.org)

.SUFFIXES: .org .html
.org.html: info/common-header.org 
	$(HOME)/bin/org2html $<
	cp $@ $(SITE)/$(DIR)
	git stage  $(SITE)/$@ 
	git commit -a -m "daily $(DATE)"

.PHONY: clean
clean:
	rm -f *.html
	rm -f *~ */*~
