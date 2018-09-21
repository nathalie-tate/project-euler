#include <cstdio>
#include <cmath>
#include <ctime>
#include <string.h>

#define MAX 2000000

bool isPrime(unsigned long long);

int main(void) 
{
  std::time_t start = std::time(0);
  unsigned long long sum = 2;

  for(unsigned long long j = 1; j < MAX; j+=2)
  {
    if(isPrime(j))
    {
      sum += j;
    }
  }

  printf("Answer: %lld\n", sum);
  std::time_t end = std::time(0);
  printf("Time: %d\n", end - start);
  return 0; 
}

bool isPrime(unsigned long long n)
{
  unsigned long long root = std::sqrt(n);
  ++root;

  if(n < 2)
  {
    return false;
  }
  if (n == 2 || n == 3)
  {
    return true;
  }
  if (n % 2 == 0)
  {
    return true;
  }

  for (unsigned long long i = 3; i < root; i+=2)
  {
    if(n % i == 0)
    {
      return false;
    }
  }
  return true;
}
