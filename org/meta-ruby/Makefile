
SHELL=/bin/bash
SITE = ~/COMM/Lects/meta-ruby/site
COMMON_HEADER = $(SITE)/info/common-header.org
PAGE = org-docs/matz
SUBDIRS = 

ORGS = index.org
HTMLS = $(ORGS:.org=.html)

.SUFFIXES: .org .html
.org.html:
	org2html $<

.PHONY: subdirs $(SUBDIRS)
all: $(HTMLS) subdirs 

subdirs: $(SUBDIRS)

$(SUBDIRS):
	make -C $@

.PHONY: clean
clean: 
	rm -f *.html
