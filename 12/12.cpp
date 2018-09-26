#include<cstdio>
#include<ctime>
#include<unordered_map>

int numFactors(unsigned long long);
unsigned long long triangle(long);

std::unordered_map<long, unsigned long long> triangles ({{1,1}});

int main()
{
  std::time_t start = std::time(0);
  long n = 1;
  unsigned long long nthTriangle = triangle(n);
  int _numFactors = numFactors(nthTriangle);

  while(_numFactors <= 500)
  {
    n++;
    nthTriangle = triangle(n);
    _numFactors = numFactors(nthTriangle);
  }
  std::time_t end = std::time(0);
  printf("Answer: %d\nTime: %d", nthTriangle, end - start);
}

int numFactors(unsigned long long m)
{
  int num = 0;

  for(int i = 1; i <= m; i++)
  {
    if(m % i == 0)
      num++;
  }
  return num;
}

unsigned long long triangle(long n)
{
  if(triangles[n])
    return triangles[n];
  else
  {
    triangles[n] = n + triangle(n-1);
    return triangles[n];
  }
}
