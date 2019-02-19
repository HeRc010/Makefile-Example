IDIR=inc
CC=g++
CFLAGS=-std=c++0x -I$(IDIR)

ODIR=obj
LDIR =../lib

LIBS=-lgtest -lm

_DEPS = ClassName.hpp
DEPS = $(patsubst %, $(IDIR)/%, $(_DEPS))

_OBJ = main.o ClassName.o
OBJ = $(patsubst %, $(ODIR)/%, $(_OBJ))

_TEST_OBJ = test_main.o ClassName.o ClassName_test.o
TEST_OBJ = $(patsubst %, $(ODIR)/%, $(_TEST_OBJ))

$(ODIR)/%.o: src/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(ODIR)/%.o: test/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

exec: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

test_runner: $(TEST_OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ exec test_runner
