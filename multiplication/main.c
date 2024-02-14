#include "algo.h"

int main(int argc, char** argv){

    if (argc < 3){
        printf("%s usage : [x], [ind]", argv[0]);
        return 1;
    }

    double x = atof(argv[1]);
    int ind = atoi(argv[2]);
    int N = 1001;

    float err_nr, err_ni, err_rr, err_ri;
    float tmp;

    if (ind == 0) {
        for (int n = 0; n < N; n++){
            tmp = ref_multi_nr(x, n);
            err_nr = fabs((tmp - multi_nr(x, n)) / tmp);
            printf("%.8f\n", err_nr);
        }
    } else if (ind == 1) {
        for (int n = 0; n < N; n++){
            tmp = ref_multi_ni(x, n);
            err_ni = fabs((tmp - multi_ni(x, n)) / tmp);
            printf("%.8f\n", err_ni);
        }
    } else if (ind == 2) {
        for (int n = 0; n < N; n++){
            tmp = ref_multi_rr(x, n);
            err_rr = fabs((tmp - multi_rr(x, n)) / tmp);
            printf("%.8f\n", err_rr);
        }
    } else if (ind == 3) {
        for (int n = 0; n < N; n++){
            tmp = ref_multi_ri(x, n);
            err_ri = fabs((tmp - multi_ri(x, n)) / tmp);
            printf("%.8f\n", err_ri);
        }
    }

    return 0;
}
