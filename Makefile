DATE = $(shell date +'%m.%d.%y')

publish:
	mkdir -p $(DATE)/ && mkdocs2pandoc > a.o.pd && pandoc --toc -f markdown+grid_tables+table_captions -o ARE_Review_$(DATE).pdf a.o.pd && mv ARE_Review_$(DATE).pdf $(DATE)/ && rm -f a.o.pd

serve:
	mkdocs serve

build:
	mkdocs build --clean

deploy:
	mkdocs gh-deploy
