#include "algo.h"

// version float
float multi_ni(float x, int n)
{
    float r = 0;
    for(int i = 0; i < n; i++)
    {
        r += x;
    }
    return r;
}
