#include "algo.h"

int main(int argc, char** argv){

    if (argc < 3){
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int ind = atoi(argv[2]);
    int N = 1e60;

    double err_nr, err_ni, err_rr, err_ri;
    for(int n = 0; n < N; n++)
    {
        double tmp = ref_multi_ni(x, n);
        switch (ind)
        {
        case 0:
            err_nr = fabs((tmp - multi_nr(x, n)) / tmp);
            printf("%lf\n", err_nr);
            break;
        case 1:
            err_ni = fabs((tmp - multi_ni(x, n)) / tmp);
            printf("%lf\n", err_ni);
            break;
        case 2:
            err_rr = fabs((tmp - multi_rr(x, n)) / tmp);
            printf("%lf\n", err_rr);
            break;
        case 3:
            err_ri = fabs((tmp - multi_ri(x, n)) / tmp);
            printf("%lf\n", err_ri);
            break;
        default:
            break;
        }
    }
    return 0;
}
