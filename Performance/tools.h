//
#pragma once

//
#include "types.h"

//
void print_f64(f64 a, u64 n);
f64 init_f64();
void sort_f64(f64 *restrict a, u64 n);
f64 mean_f64(f64 *restrict a, u64 n);
f64 stddev_f64(f64 *restrict a, u64 n);
