#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
int main(int argc, char *argv[3])
{
printf("PID of ex1.c=%d \n",getpid());
char *args[]={"HELLO","Neso","SIET",NULL};
execv("./ex2", args);
printf("Back to ex1.c");
return 0;
}

