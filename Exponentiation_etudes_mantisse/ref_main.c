#include "algo.h"

int main(int argc, char **argv)
{

    if (argc < 5)
    {
        printf("%s usage : [x], [n], [nb iter], [algo]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int n = atoi(argv[2]);
    int N = atoi(argv[3]);
    int ind = atoi(argv[4]);

    for (int i = 0; i < N; i++)
    {
        double val;
        switch (ind)
        {
        case 0:
            val = ref_exp_nr(x, n);
            break;
        case 1:
            val = ref_exp_ni(x, n);
            break;
        case 2:
            val = ref_exp_rr(x, n);
            break;
        case 3:
            val = ref_exp_ri(x, n);
            break;
        }
        printf("%.17f\n", val);
    }

    return 0;
}
