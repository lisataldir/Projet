#include "algo.h"
#include <math.h>

int main(int argc, char **argv)
{

    if (argc < 2)
    {
        printf("%s usage : [x]", argv[0]);
        return 1;
    }

    float x = atof(argv[1]);
    int N = 11011;

    for (int n = 10; n < N; n += 1100)
    {
        double ref = ref_multi(x, n);
        float val = multi_ni(x, n);
        double err = fabs((ref - (double)val) / ref);
        printf("%.17f\n", fmax(err, 0.0));
    }

    return 0;
}
