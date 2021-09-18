VPATH = build:src

.PHONY: clean format

.DELETE_ON_ERROR:

clean:
	rm build/mazes build/mazes.o

format:
	ptop -c ptop.cfg src/mazes.pas src/mazes.pas

mazes: mazes.pas
	fpc src/mazes

run: mazes
	./build/mazes

