all: main.pdf

main.pdf: main.tex
	pdflatex main.tex

run: main.pdf
	killall okular
	2>/dev/null 1>/dev/null okular main.pdf &

clean:
	rm -f *.aux *.toc *.snm *.log *.out *.nav
