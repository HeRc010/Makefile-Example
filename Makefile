IDIR =inc
CC=g++
CFLAGS=-std=c++0x -I$(IDIR)

ODIR=obj
LDIR =../lib

LIBS=-lm

_DEPS = test.hpp
DEPS = $(patsubst %, $(IDIR)/%, $(_DEPS))

_OBJ = main.o test.o
OBJ = $(patsubst %, $(ODIR)/%, $(_OBJ))

$(ODIR)/%.o: src/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

exec: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ exec
