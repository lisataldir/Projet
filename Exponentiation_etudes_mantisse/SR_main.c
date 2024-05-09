#include "algo.h"

int main(int argc, char **argv)
{

    if (argc < 5)
    {
        printf("%s usage : [x], [n], [nb iter], [algo]", argv[0]);
        return 1;
    }

    float x = atof(argv[1]);
    int n = atoi(argv[2]);
    int N = atoi(argv[3]);
    int ind = atoi(argv[4]);


    for (int i = 0; i < N; i++)
    {
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
        printf("%.17f\n", val);
    }

    return 0;
}
