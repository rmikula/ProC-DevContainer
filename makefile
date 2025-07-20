
finale: main.c
	gcc -o test -g  -Wall main.c -I /usr/include/oracle/19.26/client64 -L /usr/lib/oracle/19.26/client64/lib -l clntsh

main.c: main.pc
	proc CONFIG=pcscfg.cfg main.pc 

clean:
	rm -f main.c