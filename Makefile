CC=pdflatex
CFLAGS=-shell-escape
CONFIG=settings/*.tex
OBJS=pages/*.tex
JOBNAME=compte_rendu

$(JOBNAME).pdf: $(JOBNAME).aux
	

$(JOBNAME).aux: $(JOBNAME).tex $(CONFIG) $(OBJS) glossaries
	export TEXINPUTS=".//:" ; $(CC) $(CFLAGS) $< ;

biblio: biblio.bib
	export TEXINPUTS=".//:" ; $(CC) $(CFLAGS) $(JOBNAME).tex ; bibtex $(JOBNAME)

glossaries:
	export TEXINPUTS=".//:" ; $(CC) $(CFLAGS) $(JOBNAME).tex ; makeglossaries $(JOBNAME)

clean: 
	rm -rf _minted-$(JOBNAME) *~ $(JOBNAME).aux $(JOBNAME).toc $(JOBNAME).log $(JOBNAME).bbl $(JOBNAME).blg $(JOBNAME).gz $(JOBNAME).out $(JOBNAME)-*.asy $(JOBNAME)-*.pdf $(JOBNAME).pre $(JOBNAME).vrb $(JOBNAME).snm $(JOBNAME).lof $(JOBNAME).lol $(JOBNAME).lot $(JOBNAME).glsdefs $(JOBNAME).glo $(JOBNAME).glg $(JOBNAME).gls $(JOBNAME).xdy
