
all: math.o test.o
		cc -o test math.o test.o
		

math.o: math.s 
			as -o math.o math.s

test.o: test.c
			cc -c test.c
clean:
			rm *.o

test_addition:
ifeq ("$(shell ./test)", "42")
		@echo "(:"
else
		@echo ":/"
endif


test_substraction:
ifeq ("$(shell ./test)", "38")
		@echo "(:"
else
		@echo ":/"
endif

test_multiplication:
ifeq ("$(shell ./test)", "80")
		@echo "(:"
else
		@echo ":/"
endif

