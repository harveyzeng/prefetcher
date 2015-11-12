CFLAGS = -msse2 --std gnu99 -O0 -Wall

NAIVE_TRANSPOSE: main.c
	$(CC) $(CFLAGS) -o  main -D NAIVE_TRANSPOSE main.c
SSE_TRANSPOSE: main.c
	$(CC) $(CFLAGS) -o main -D SSE_TRANSPOSE main.c
SSE_PREFETCH_TRANSPOSE: main.c
	$(CC) $(CFLAGS) -o main -D SSE_PREFETCH_TRANSPOSE main.c
clean:
	$(RM) main
