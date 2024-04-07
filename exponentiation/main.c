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
    int N = 10001;

    double ref, err;
    float val;

    for (int n = 0; n < N; n+=751)
    {
        double ref = ref_exp((double)x, n);
        float val;

        switch (ind)
        {
        case 0:
            val = exp_nr(x, n);
            break;
        case 1:
            val = exp_ni(x, n);
            break;
        case 2:
            val = exp_rr(x, n);
            break;
        case 3:
            val = exp_ri(x, n);
            break;
        }

        double err = (double)fabs((ref - (double)val)/ ref);
        printf("%.17f\n", err);
    }

    return 0;
}
