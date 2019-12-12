CC=gcc

LDLIBS=-lncurses


CFLAGS?= -o $@

#Make all the executables in the assignment
all: tictactoe reader writer server

#The tictactoe program itself. The variables $(CFLAGS) and $(CC) are defined above;
# they are what should change if they need to.
tictactoe: tictactoe.c tictactoe.h
	$(CC) $(CFLAGS) tictactoe.c

#The reader file
reader: reader.c
	$(CC) $(CFLAGS) reader.c

#The writer file
writer: writer.c
	$(CC) $(CFLAGS) writer.c

#The server version
server: client server

#The client code
client: client.c
	$(CC) $(CFLAGS) client.c

#The server code
t3server: t3server.c
	$(CC) $(CFLAGS) t3server.c

#Clean up the working directory
clean:
	rm client server reader writer tictactoe
