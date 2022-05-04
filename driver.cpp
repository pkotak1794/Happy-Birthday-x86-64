// Author: Priyanka Kotak
// Program Name: Happy Birthday

#include <cstdio>
#include <string>

extern "C" char *hbd();

int main() {

  printf("Welcome to Priyanka's Happy Birthday Program!\n");
  char *string_returned = hbd();
  printf("Bye!\n");
  return 0;

}
