EXPECTED=65
STR="OA"

all:
			as -o input.o input.s
			ld -o input   input.o

test:
			 @echo $(shell echo $(STR) | ./input)
	  @case $(.SHELLSTATUS) in \
      $(EXPECTED))\
    echo "succsess! (:";; \
    *) \
    echo "failure! :/";;\
    esac;
