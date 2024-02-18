#include "algo.h"

int main(int argc, char **argv)
{

    if (argc < 4)
    {
        printf("%s usage : [x], [n max], [algo]", argv[0]);
        return 1;
    }

    float x = atof(argv[1]);
    int N = atoi(argv[2]);
    int ind = atoi(argv[3]);

    for (int n = 0; n < N; n+=10)
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
