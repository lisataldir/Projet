#ifndef ALGO_H
#define ALGO_H

#include <iostream>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include "gtest/gtest.h"

double exp_naif_rec(double x, int n);
double exp_naif_iter(double x, int n);
double exp_rapid_rec(double x, int n);
double exp_rapid_iter(double x, int n);

#endif