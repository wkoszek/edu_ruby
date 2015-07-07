# (c) 2015 Wojciech A. Koszek <wojciech@koszek.com>
SRCS:=$(wildcard robj*.rb)
OBJECTS:=$(SRCS:.rb=.o)
TESTDATA:=$(SRCS:.rb=.t)

all:	prepare $(OBJECTS) test

%.o: %.rb
	ruby $< > test/$@ 2>&1

%.t: %.o
	@echo "#--- comparing $< (no output on OK match) ---"
	@diff -u test/$@ test/$<

test: $(TESTDATA)

prepare:
	rm -rf test/*.o
	mkdir -p test/*.o

clean:
	rm -rf test/*.o
