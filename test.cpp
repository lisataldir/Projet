// unit tests for 4 algorithms

#include "gtest/gtest.h" //include the google test framework

//we include directly .cpp files to execute the tests
#include "algo.h"

// compared with "real" values calculated from python

double r = 1.0E-13;


TEST(ExpNaifRec, BasicTest) 
{
    EXPECT_NEAR(exp_naif_rec(2.0, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_rec(2.0, 1), 2.0, 2.0 * r);
    EXPECT_NEAR(exp_naif_rec(2.0, 5), 32.0, 32.0 * r);
    EXPECT_NEAR(exp_naif_rec(2.0, 10), 1024.0, 1024.0 * r);
    EXPECT_NEAR(exp_naif_rec(2.0, 39), 549755813888.0, 549755813888.0 * r);
    EXPECT_NEAR(exp_naif_rec(2.0, 217), 2.1062458333711437E+65, 2.1062458333711437E+65 * r); 

    EXPECT_NEAR(exp_naif_rec(18.9, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_rec(18.9, 1), 18.9, 18.9 * r);
    EXPECT_NEAR(exp_naif_rec(18.9, 6), 45579633.110361, 45579633.110361 * r); 
    EXPECT_NEAR(exp_naif_rec(18.9, 50), 6.6541135651775104E+63, 6.6541135651775104E+63 * r);
    EXPECT_NEAR(exp_naif_rec(18.9, 100), 4.4277227338279358E+127, 4.4277227338279358E+127 * r);

    EXPECT_NEAR(exp_naif_rec(42.73, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_rec(42.73, 1), 42.73, 42.73 * r);
    EXPECT_NEAR(exp_naif_rec(42.73, 13), 1.5831702002545772E+21, 1.5831702002545772E+21 * r);
    EXPECT_NEAR(exp_naif_rec(42.73, 74), 4.7231753415107378E+120, 4.7231753415107378E+120 * r);
    EXPECT_NEAR(exp_naif_rec(42.73, 80), 2.8749574761878580E+130, 2.8749574761878580E+130 * r);

    EXPECT_NEAR(exp_naif_rec(111.11, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_rec(111.11, 1), 111.11, 111.11 * r);
    EXPECT_NEAR(exp_naif_rec(111.11, 8), 23228714744613045.0, 23228714744613045.0 * r);
    EXPECT_NEAR(exp_naif_rec(111.11, 26), 1.5473260510200081E+53, 1.5473260510200081E+53 * r);
    EXPECT_NEAR(exp_naif_rec(111.11, 47), 1.4138324227997744E+96, 1.4138324227997744E+96 * r);

    EXPECT_NEAR(exp_naif_rec(6543.2, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_rec(6543.2, 1), 6543.2, 6543.2 * r);
    EXPECT_NEAR(exp_naif_rec(6543.2, 10), 1.4384737856254202E+38, 1.4384737856254202E+38 * r);
    EXPECT_NEAR(exp_naif_rec(6543.2, 32), 1.2743427304864022E+122, 1.2743427304864022E+122 * r);
}

TEST(ExpNaifIter, BasicTest) 
{
    EXPECT_NEAR(exp_naif_iter(2.0, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_iter(2.0, 1), 2.0, 2.0 * r);
    EXPECT_NEAR(exp_naif_iter(2.0, 11), 2048.0, 2048.0 * r);
    EXPECT_NEAR(exp_naif_iter(2.0, 25), 33554432.0, 33554432.0 * r);
    EXPECT_NEAR(exp_naif_iter(2.0, 58), 2.8823037615171174E+17, 2.8823037615171174E+17 * r);
    EXPECT_NEAR(exp_naif_iter(2.0, 432), 1.1090678776483259E+130, 1.1090678776483259E+130 * r);

    EXPECT_NEAR(exp_naif_iter(9.35, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_iter(9.35, 1), 9.35, 9.35 * r);
    EXPECT_NEAR(exp_naif_iter(9.35, 7), 6247140.5380188148, 6247140.5380188148 * r);
    EXPECT_NEAR(exp_naif_iter(9.35, 23), 2.1314102504387326E+22, 2.1314102504387326E+22 * r);
    EXPECT_NEAR(exp_naif_iter(9.35, 45), 4.8587269044655626E+43, 4.8587269044655626E+43 * r);
    EXPECT_NEAR(exp_naif_iter(9.35, 102), 1.0538633684347788E+99, 1.0538633684347788E+99 * r);

    EXPECT_NEAR(exp_naif_iter(37.73, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_iter(37.73, 1), 37.73, 37.73 * r);
    EXPECT_NEAR(exp_naif_iter(37.73, 9), 154946313105250.96, 154946313105250.96 * r);
    EXPECT_NEAR(exp_naif_iter(37.73, 41), 4.4071619846690424E+64, 4.4071619846690424E+64 * r);
    EXPECT_NEAR(exp_naif_iter(37.73, 73), 1.2535359099456847E+115, 1.2535359099456847E+115 * r);

    EXPECT_NEAR(exp_naif_iter(278.4, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_iter(278.4, 1), 278.4, 278.4 * r);
    EXPECT_NEAR(exp_naif_iter(278.4, 16), 1.3022899679072424E+39, 1.3022899679072424E+39 * r);
    EXPECT_NEAR(exp_naif_iter(278.4, 59), 1.7198264559184828E+144, 1.7198264559184828E+144 * r);

    EXPECT_NEAR(exp_naif_iter(2946.33, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_naif_iter(2946.33, 1), 2946.33, 2946.33 * r);
    EXPECT_NEAR(exp_naif_iter(2946.33, 4), 75357338480510.728, 75357338480510.728 * r);
    EXPECT_NEAR(exp_naif_iter(2946.33, 32), 1.0399307277694322E+111, 1.0399307277694322E+111 * r);
}

TEST(ExpRapidRec, BasicTest) 
{
    EXPECT_NEAR(exp_rapid_rec(2.0, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_rec(2.0, 1), 2.0, 2.0 * r);
    EXPECT_NEAR(exp_rapid_rec(2.0, 9), 512.0, 512.0 * r);
    EXPECT_NEAR(exp_rapid_rec(2.0, 12), 4096.0, 4096.0 * r);
    EXPECT_NEAR(exp_rapid_rec(2.0, 47), 140737488355328.0, 140737488355328.0 * r);
    EXPECT_NEAR(exp_rapid_rec(2.0, 66), 7.3786976294838206E+19, 7.3786976294838206E+19 * r);
    EXPECT_NEAR(exp_rapid_rec(2.0, 278), 4.8566722305643227E+83, 4.8566722305643227E+83 * r);

    EXPECT_NEAR(exp_rapid_rec(5.6, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_rec(5.6, 1), 5.6, 5.6 * r);
    EXPECT_NEAR(exp_rapid_rec(5.6, 4), 983.4496, 983.4496 * r);
    EXPECT_NEAR(exp_rapid_rec(5.6, 17), 5238373480538.9620, 5238373480538.9620 * r);
    EXPECT_NEAR(exp_rapid_rec(5.6, 99), 1.1765616097704339E+74, 1.1765616097704339E+74 * r);
    EXPECT_NEAR(exp_rapid_rec(5.6, 211), 7.3735002329938886E+157, 7.3735002329938886E+157 * r);

    EXPECT_NEAR(exp_rapid_rec(13.47, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_rec(13.47, 1), 13.47, 13.47 * r);
    EXPECT_NEAR(exp_rapid_rec(13.47, 8), 1083779085.3349189, 1083779085.3349189 * r);
    EXPECT_NEAR(exp_rapid_rec(13.47, 34), 2.5032155880031041E+38, 2.5032155880031041E+38 * r);
    EXPECT_NEAR(exp_rapid_rec(13.47, 80), 2.2356697873648668E+90, 2.2356697873648668E+90 * r);

    EXPECT_NEAR(exp_rapid_rec(432.1, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_rec(432.1, 1), 432.1, 432.1 * r);
    EXPECT_NEAR(exp_rapid_rec(432.1, 6), 6508870004372800.9, 6508870004372800.9 * r);
    EXPECT_NEAR(exp_rapid_rec(432.1, 22), 9.6128874794288132E+57, 9.6128874794288132E+57 * r);
    EXPECT_NEAR(exp_rapid_rec(432.1, 53), 4.8525063736399653E+139, 4.8525063736399653E+139 * r);

    EXPECT_NEAR(exp_rapid_rec(3557.6, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_rec(3557.6, 1), 3557.6, 3557.6 * r);
    EXPECT_NEAR(exp_rapid_rec(3557.6, 3), 45026827582.976, 45026827582.976 * r);
    EXPECT_NEAR(exp_rapid_rec(3557.6, 10), 3.2476645472341597E+35, 3.2476645472341597E+35 * r);
    EXPECT_NEAR(exp_rapid_rec(3557.6, 20), 1.0547325011361659E+71, 1.0547325011361659E+71 * r);
}

TEST(ExpRapidIter, BasicTest) 
{
    EXPECT_NEAR(exp_rapid_iter(2.0, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_iter(2.0, 1), 2.0, 2.0 * r);
    EXPECT_NEAR(exp_rapid_iter(2.0, 8), 256.0, 256.0 * r);
    EXPECT_NEAR(exp_rapid_iter(2.0, 41), 2199023255552.0, 2199023255552.0 * r);
    EXPECT_NEAR(exp_rapid_iter(2.0, 119), 6.6461399789245794E+35, 6.6461399789245794E+35 * r);
    EXPECT_NEAR(exp_rapid_iter(2.0, 533), 2.8118211215894977E+160, 2.8118211215894977E+160 * r);

    EXPECT_NEAR(exp_rapid_iter(6.9, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_iter(6.9, 1), 6.9, 6.9 * r);
    EXPECT_NEAR(exp_rapid_iter(6.9, 8), 5137983.74428641, 5137983.74428641 * r);
    EXPECT_NEAR(exp_rapid_iter(6.9, 22), 2.8489183085523667E+18, 2.8489183085523667E+18 * r);
    EXPECT_NEAR(exp_rapid_iter(6.9, 67), 1.5954716051592727E+56, 1.5954716051592727E+56 * r);
    EXPECT_NEAR(exp_rapid_iter(6.9, 100), 7.6720084716913083E+83, 7.6720084716913083E+83 * r);

    EXPECT_NEAR(exp_rapid_iter(44.44, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_iter(44.44, 1), 44.44, 44.44 * r);
    EXPECT_NEAR(exp_rapid_iter(44.44, 5), 173328608.84854282, 173328608.84854282 * r);
    EXPECT_NEAR(exp_rapid_iter(44.44, 19), 2.0309861186569698E+31, 2.0309861186569698E+31 * r);
    EXPECT_NEAR(exp_rapid_iter(44.44, 55), 4.2420205178485711E+90, 4.2420205178485711E+90 * r);

    EXPECT_NEAR(exp_rapid_iter(233.33, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_iter(233.33, 1), 233.33, 233.33 * r);
    EXPECT_NEAR(exp_rapid_iter(233.33, 9), 2.0499120548476146E+21, 2.0499120548476146E+21 * r);
    EXPECT_NEAR(exp_rapid_iter(233.33, 17), 1.8009426274416361E+40, 1.8009426274416361E+40 * r);
    EXPECT_NEAR(exp_rapid_iter(233.33, 32), 5.9574251346099744E+75, 5.9574251346099744E+75 * r);

    EXPECT_NEAR(exp_rapid_iter(1111.567, 0), 1.0, 1.0 * r);
    EXPECT_NEAR(exp_rapid_iter(1111.567, 1), 1111.567, 1111.567 * r);
    EXPECT_NEAR(exp_rapid_iter(1111.567, 7), 2.0967638253277748E+21, 2.0967638253277748E+21 * r);
    EXPECT_NEAR(exp_rapid_iter(1111.567, 13), 3.9551538856435675E+39, 3.9551538856435675E+39 * r);
    EXPECT_NEAR(exp_rapid_iter(1111.567, 31), 2.6546361015783621E+94, 2.6546361015783621E+94 * r);
}


int main(int argc, char **argv) 
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
