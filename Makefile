all:
	make -C qrels
	make -C runs
clean:
	make -C qrels clean
	make -C runs clean