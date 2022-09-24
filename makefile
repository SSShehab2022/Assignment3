
MOD = STATIC

staticexe: app.o
ifeq ($(MOD) , STATIC)
	gcc *c -o staticexe -lc --static
	./staticexe
endif

ifeq ($(MOD) , DYNAMIC)
	gcc *c -o dynamicexe -lc
	./dynamicexe
endif

app.o: app.c fact.o fib.o rand.o

fact.o: fact.c
	gcc fact.c -o fact.o -c

rand.o: rand.c
	gcc rand.c -o rand.o -c

fib.o: fib.c
	gcc fib.c -o fib.o -c

clean:
	rm -f *.o
