.PHONY: all dirs dash

all: dirs

dirs: repos themes elisp

repos:
	mkdir repos

themes:
	mkdir themes

elisp:
	mkdir elisp

dash: elisp/dash.el

elisp/dash.el: repos/dash.el
	cp repos/dash.el/dash.el elisp/dash.el

repos/dash.el:
	git clone git@github.com:magnars/dash.el.git repos/dash.el

clean:
	rm -rf repos themes elisp
