//
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "tools.h"
//
void print_f64(f64 a, u64 n)
{
  for (u64 i = 0; i < n; i++)
      printf("%lf \n", a);
}

//
f64 init_f64()
{
    return (f64)RAND_MAX / (f64)rand();
}

//
void sort_f64(f64 *restrict a, u64 n)
{
  for (u64 i = 0; i < n; i++)
    for (u64 j = i + 1; j < n; j++)
      if (a[i] > a[j])
	{
	  f64 tmp = a[i];

	  a[i] = a[j];
	  a[j] = tmp;
	}
}

//
f64 mean_f64(f64 *restrict a, u64 n)
{
  f64 m = 0.0;

  for (u64 i = 0; i < n; i++)
    m += a[i];

  m /= (f64)n;

  return m;
}

//
f64 stddev_f64(f64 *restrict a, u64 n)
{
  f64 d = 0.0;
  f64 m = mean_f64(a, n);

  for (u64 i = 0; i < n; i++)
    d += (a[i] - m) * (a[i] - m);

  d /= (f64)(n - 1);
  
  return sqrt(d);
}
