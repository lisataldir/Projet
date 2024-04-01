#include "algo.h"
#include <time.h>

int main(int argc, char **argv)
{

    if (argc < 3)
    {
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int ind = atoi(argv[2]);
    int N = 10001;
    clock_t begin, end;
    float val;

    for (int i=0; i< 4;i++)
    {
        for (int n = 0; n < N; n+=1000)
        {

        switch (ind)
        {
        case 0:
            begin = clock();
            val = exp_nr(x, n);
            end = clock();
            break;
        case 1:
            begin = clock();
            val = exp_ni(x, n);
            end = clock();
            break;
        case 2:
            begin = clock();
            val = exp_rr(x, n);
            end = clock();
            break;
        case 3:
            begin = clock();
            val = exp_ri(x, n);
            end = clock();
            break;
        }

        double t = (double)((end - begin) * 1000.0 / CLOCKS_PER_SEC);
        if (i == 3) printf("%d %.17f\n", n, t);
        }
    }
    
}