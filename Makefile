all:
	g++ -o mutex spinlock.cpp -lpthread
	g++ -o spinlock spinlock.cpp -lpthread -DUSE_SPINLOCK
	gcc -o wo_atomic atomic.c -lpthread
	gcc -O2 -o w_atomic atomic.c -lpthread

clean:
	rm -f mutex spinlock wo_atomic w_atomic

