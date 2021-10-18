0th assignment.

you already have a template repository with assembly source and hints, and makefile.

you need to replace '?' signs with something else to complete the program.

running:

`make`

will compile your program.

running:

`make test`

will test the exit status of your program.

the exit status of the program should contain number 65 - the ASCII number for 'A' character.

`make test` runs your program like this:

`echo "OA" | ./input`

then checks the exit status with:

`echo $?`


the program should take it from the standard input. second character in the stream, according to the makefile test is 'A'. it should be then used as an exit status.




