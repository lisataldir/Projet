#include "algo.h"

int main(int argc, char **argv)
{

    if (argc < 5)
    {
        printf("%s usage : [x] [N] [n] [algo]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int N = atoi(argv[2]);
    int h = atoi(argv[3]);
    int ind = atoi(argv[4]);

    for (int n = 0; n < N; n+=h)
    {
        double val;
        switch (ind)
        {
        case 0:
            val = ref_multi_nr(x, n);
            break;
        case 1:
            val = ref_multi_ni(x, n);
            break;
        case 2:
            val = ref_multi_rr(x, n);
            break;
        case 3:
            val = ref_multi_ri(x, n);
            break;
        }
        printf("%.17f\n", val);
    }

    return 0;
}
