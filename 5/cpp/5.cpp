#include<cstdio>
#include<ctime>

int main()
{
  std::time_t start = std::time(0);

  long x = 2520;

  while(1)
  {
    int t = 1;
    for(int i = 1; i <= 20; i++)
    {
      if(x % i)
      {
        t = 0;
        break;
      }
    }
    if(t)
    {
      printf("Answer: %d\n", x);
      std::time_t end = std::time(0);
      printf("Time: %d\n", end - start);
      return(0);
    }
    x += 2;
  } 
}
