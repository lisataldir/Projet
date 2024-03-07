#include "algo.h"

int main(int argc, char **argv)
{

    if (argc < 3)
    {
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    float x = atof(argv[1]);
    int ind = atoi(argv[2]);
    int N = 301;

    for (int n = 0; n < N; n += 5)
    {
        double ref = ref_multi(x, n);
        float val;

        switch (ind)
        {
        case 0:
            val = multi_nr(x, n);
            break;
        case 1:
            val = multi_ni(x, n);
            break;
        case 2:
            val = multi_rr(x, n);
            break;
        case 3:
            val = multi_ri(x, n);
            break;
        }

        double err = fabs((ref - (double)val) / ref);
        printf("%.17f\n", err);
    }

    return 0;
}
