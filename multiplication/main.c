#include "algo.h"

int main(int argc, char **argv)
{

    if (argc < 2)
    {
        printf("%s usage : [x]", argv[0]);
        return 1;
    }

    float x = atof(argv[1]);
    int N = 16001;

    for (int n = 0; n < N; n += 1000)
    {
        double ref = ref_multi(x, n);
        float val = multi_ni(x, n);
        double err = fabs((ref - (double)val) / ref);
        printf("%.17f\n", err);
    }

    return 0;
}
