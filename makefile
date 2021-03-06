OBJ =	obj/index.o obj/buffer.o obj/read.o obj/main.o obj/bfs.o obj/print.o obj/hash.o obj/wcc.o obj/queue.o obj/stack.o obj/scc.o obj/grail.o
HDR =	headers/structs.h headers/index.h headers/buffer.h headers/read.h headers/bfs.h headers/print.h headers/hash.h headers/wcc.h headers/scc.h
CC  =	gcc -g3 -Wall
OUT =	graph

all: $(HDR) $(OBJ)
	$(CC) $(OBJ) -o $(OUT)
	
obj/index.o: $(HDR) src/structs/index.c
	$(CC) -c src/structs/index.c -o obj/index.o
	
obj/buffer.o: $(HDR) src/structs/buffer.c
	$(CC) -c src/structs/buffer.c -o obj/buffer.o
	
obj/read.o: $(HDR) src/io/read.c
	$(CC) -c src/io/read.c -o obj/read.o
	
obj/main.o: $(HDR) src/funcs/main.c
	$(CC) -c src/funcs/main.c -o obj/main.o
	
obj/bfs.o: $(HDR) src/funcs/bfs.c
	$(CC) -c src/funcs/bfs.c -o obj/bfs.o
	
obj/print.o: $(HDR) src/io/print.c
	$(CC) -c src/io/print.c -o obj/print.o
	
obj/hash.o: $(HDR) src/structs/hash.c
	$(CC) -c src/structs/hash.c -o obj/hash.o

obj/wcc.o: $(HDR) src/funcs/wcc.c
	$(CC) -c src/funcs/wcc.c -o obj/wcc.o
	
obj/queue.o: $(HDR) src/structs/queue.c
	$(CC) -c src/structs/queue.c -o obj/queue.o
	
obj/stack.o: $(HDR) src/structs/stack.c
	$(CC) -c src/structs/stack.c -o obj/stack.o
	
obj/scc.o: $(HDR) src/funcs/scc.c
	$(CC) -c src/funcs/scc.c -o obj/scc.o
	
obj/grail.o: $(HDR) src/structs/grail.c
	$(CC) -c src/structs/grail.c -o obj/grail.o
	
clean:
	rm -f $(OBJ) $(OUT)
