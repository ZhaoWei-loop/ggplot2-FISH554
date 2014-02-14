all: notes

notes:
	Rscript -e "knitr::knit('ggplot2-notes.Rnw')"
	pdflatex ggplot2-notes

eg:
	Rscript -e "knitr::knit('ggplot2-exercises-answers.Rmd')"
	perl -p -i -e "s/\`\`\`r/\`\`\`S/g" ggplot2-exercises-answers.md
	Rscript -e "knitr::knit('ggplot2-exercises.Rmd')"
	perl -p -i -e "s/\`\`\`r/\`\`\`S/g" ggplot2-exercises.md
