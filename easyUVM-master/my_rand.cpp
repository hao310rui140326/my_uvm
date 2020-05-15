#include <stdio.h>
#include <math.h>
#include <stdlib.h>

extern "C" int my_rand(int a){
  srand(a);
  return int(rand());
}


