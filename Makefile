flags = -O2 -Wall -std=c2x

all: clean cache

cache: cache.o
	cc ${flags} $^ -o $@ ${ldflags}

cache.o: cache.c
	cc ${flags} -c $^

clean:
	rm -f *.o cache