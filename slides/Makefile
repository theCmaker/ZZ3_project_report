CC=pdflatex
CFLAGS=-shell-escape -halt-on-error
CONFIG=settings/*.tex 
OBJS=pages/*.tex files/*.tex
JOBNAME=slide

$(JOBNAME).pdf: $(JOBNAME).aux
	

$(JOBNAME).aux: $(JOBNAME).tex $(CONFIG) $(OBJS)
	export TEXINPUTS=".//:" ; $(CC) $(CFLAGS) $< && $(CC) $(CFLAGS) $< ;

clean: 
	rm -rf _minted-$(JOBNAME) *~ $(JOBNAME).aux $(JOBNAME).toc $(JOBNAME).log $(JOBNAME).bbl $(JOBNAME).blg $(JOBNAME).gz $(JOBNAME).out $(JOBNAME)-*.asy $(JOBNAME)-*.pdf $(JOBNAME).pre $(JOBNAME).vrb $(JOBNAME).snm $(JOBNAME).lof $(JOBNAME).lol $(JOBNAME).lot $(JOBNAME).glsdefs $(JOBNAME).glo $(JOBNAME).glg $(JOBNAME).gls $(JOBNAME).xdy
