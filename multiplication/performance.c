#include "algo.h"
#include <time.h>

int main(int argc, char **argv)
{

    if (argc < 3)
    {
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    float x = atof(argv[1]);
    int ind = atoi(argv[2]);
    int N = 16001;

    clock_t begin, end;
    float val;

    for (int n = 0; n < N; n++)
    {
        switch (ind)
        {
        case 0:
            begin = clock();
            val = multi_nr(x, n);
            end = clock();
            break;
        case 1:
            begin = clock();
            val = multi_ni(x, n);
            end = clock();
            break;
        case 2:
            begin = clock();
            val = multi_rr(x, n);
            end = clock();
            break;
        case 3:
            begin = clock();
            val = multi_ri(x, n);
            end = clock();
            break;
        default:
            printf("Invalid value for 'ind'.\n");
            return 1;
        }

        double t = (double)((end - begin) * 1000.0 / CLOCKS_PER_SEC);
        printf("%.17f\n", t);
    }

    return 0;
}