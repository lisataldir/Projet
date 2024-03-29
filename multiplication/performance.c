#include "algo.h"
#include <time.h>

int main(int argc, char **argv)
{

    if (argc < 2)
    {
        printf("%s usage : [x]", argv[0]);
        return 1;
    }

    float x = atof(argv[1]);
    int N = 30001;

    clock_t begin, end;
    float val;

    for (int n = 0; n < N; n+=500)
    {

        begin = clock();
        val = multi_ri(x, n);
        end = clock();

        double t = (double)((end - begin) * 1000.0 / CLOCKS_PER_SEC);
        printf("%.17f\n", t);
    }

    return 0;
}