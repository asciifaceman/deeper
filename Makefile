.PHONY: clean build link run

clean:
	rm -rf *.o

build:
	ca65 --cpu 65816 -o deeper.o deeper.s

link:
	ld65 -C memmap.cfg deeper.o -o deeper.smc

run:
	@higan deeper.smc

build-and-run: clean build link run