#include <stdio.h>
#include <stdlib.h>

int helloworld()
{
  return execve("/bin/sh", 0LL, 0LL);
}

int __cdecl main(int argc, const char **argv, const char **envp)
{
  char v4[32]; // [rsp+0h] [rbp-20h] BYREF

  init(argc, argv, envp);
  puts("Are you new to ctf?");
  puts("Try to say helloworld in hacker's way!");
  gets(v4);
  return 0;
}
