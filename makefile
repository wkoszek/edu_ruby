# (c) 2015 Wojciech A. Koszek <wojciech@koszek.com>
SRCS:=$(wildcard robj*.rb)
OBJECTS:=$(SRCS:.rb=.o)

all:	prepare $(OBJECTS)

%.o: %.rb
	ruby $<  2>&1 > _.out/$@

prepare:
	rm -rf _.out
	mkdir -p _.out

clean:
	rm -rf _.out
