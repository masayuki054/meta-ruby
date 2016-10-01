
SHELL=/bin/bash
SITE = ~/COMM/Lects/meta-ruby/site
COMMON_HEADER = $(SITE)/info/common-header.org
PAGE = org-docs
SUBDIRS = matz meta-ruby rubymisc


ORGS = emacs-setup.org oo.org ruby_begin.org  
HTMLS = $(ORGS:.org=.html)

.SUFFIXES: .org .html
.org.html:
	org2html $<

index.html: index.org contents.org $(ORGS) 

.PHONY: subdirs $(SUBDIRS)
all: $(HTMLS) subdirs 

subdirs: $(SUBDIRS)

$(SUBDIRS):
	make -C $@

.PHONY: clean
clean: 
	rm -f *.html
	rm -f */*.html
