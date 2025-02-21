CC=c3c
CFLAGS=
SRC=src
BIN=bin

SRCS=$(wildcard $(SRC)/*.c3)
BINS=$(SRCS:$(SRC)/%.c3=%)

all: $(BINS)

%: $(SRC)/%.c3
	$(CC) compile $(CFLAGS) -o $(BIN)/$@ $<

clean:
	$(RM) $(BIN)/*
