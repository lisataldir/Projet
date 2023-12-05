// unit tests for 4 algorithms

#include "gtest/gtest.h" //include the google test framework

//we include directly .cpp files to execute the tests
#include "algo.h"

// compared with "real" values calculated from python

TEST(ExpNaifRec, BasicTest) 
{
    EXPECT_FLOAT_EQ(exp_naif_rec(2.0, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(2.0, 1), 2.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(2.0, 5), 32.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(2.0, 10), 1024.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(2.0, 39), 549755813888.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(2.0, 217), 2.106245833371143733958360554E+65); 

    EXPECT_FLOAT_EQ(exp_naif_rec(18.9, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(18.9, 1), 18.9);
    EXPECT_FLOAT_EQ(exp_naif_rec(18.9, 6), 45579633.110361); 
    EXPECT_FLOAT_EQ(exp_naif_rec(18.9, 50), 6.654113565177510421577318780E+63);
    EXPECT_FLOAT_EQ(exp_naif_rec(18.9, 100), 4.427722733827935823332452113E+127);

    EXPECT_FLOAT_EQ(exp_naif_rec(42.73, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(42.73, 1), 42.73);
    EXPECT_FLOAT_EQ(exp_naif_rec(42.73, 13), 1583170200254577181707.135195);
    EXPECT_FLOAT_EQ(exp_naif_rec(42.73, 74), 4.723175341510737834585004112E+120);
    EXPECT_FLOAT_EQ(exp_naif_rec(42.73, 80), 2.874957476187858031702928023E+130);

    EXPECT_FLOAT_EQ(exp_naif_rec(111.111, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(111.111, 1), 111.111);
    //EXPECT_FLOAT_EQ(exp_naif_rec(111.111, 8), 23228714744613044.99127806738);
    //very bad precision
    EXPECT_FLOAT_EQ(exp_naif_rec(111.111, 26), 1.547326051020008050918811072E+53);
    EXPECT_FLOAT_EQ(exp_naif_rec(111.111, 47), 1.413832422799774447851093906E+96);

    EXPECT_FLOAT_EQ(exp_naif_rec(6543.2, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_rec(6543.2, 1), 6543.2);
    EXPECT_FLOAT_EQ(exp_naif_rec(6543.2, 10), 1.438473785625420210694039981E+38);
    EXPECT_FLOAT_EQ(exp_naif_rec(6543.2, 32), 1.274342730486402163714005007E+122);
}

TEST(ExpNaifIter, BasicTest) 
{
    EXPECT_FLOAT_EQ(exp_naif_iter(2.0, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(2.0, 1), 2.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(2.0, 11), 2048.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(2.0, 25), 33554432.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(2.0, 58), 288230376151711744.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(2.0, 432), 1.109067877648325943831365674E+130);

    EXPECT_FLOAT_EQ(exp_naif_iter(9.35, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(9.35, 1), 9.35);
    EXPECT_FLOAT_EQ(exp_naif_iter(9.35, 7), 6247140.53801881484375);
    EXPECT_FLOAT_EQ(exp_naif_iter(9.35, 23), 21314102504387326388116.70108);
    EXPECT_FLOAT_EQ(exp_naif_iter(9.35, 45), 4.858726904465562552874833479E+43);
    EXPECT_FLOAT_EQ(exp_naif_iter(9.35, 102), 1.053863368434778806899625158E+99);

    EXPECT_FLOAT_EQ(exp_naif_iter(37.73, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(37.73, 1), 37.73);
    EXPECT_FLOAT_EQ(exp_naif_iter(37.73, 9), 154946313105250.9584543825746);
    EXPECT_FLOAT_EQ(exp_naif_iter(37.73, 41), 4.407161984669042426002508666E+64);
    EXPECT_FLOAT_EQ(exp_naif_iter(37.73, 73), 1.253535909945684693361719728E+115);

    EXPECT_FLOAT_EQ(exp_naif_iter(278.4, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(278.4, 1), 278.4);
    EXPECT_FLOAT_EQ(exp_naif_iter(278.4, 16), 1.302289967907242436280054817E+39);
    EXPECT_FLOAT_EQ(exp_naif_iter(278.4, 59), 1.719826455918482835475818666E+144);

    EXPECT_FLOAT_EQ(exp_naif_iter(2946.33, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_naif_iter(2946.33, 1), 2946.33);
    EXPECT_FLOAT_EQ(exp_naif_iter(2946.33, 4), 75357338480510.72786721);
    EXPECT_FLOAT_EQ(exp_naif_iter(2946.33, 32), 1.039930727769432173680477071E+111);
}

TEST(ExpRapidRec, BasicTest) 
{
    EXPECT_FLOAT_EQ(exp_rapid_rec(2.0, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(2.0, 1), 2.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(2.0, 9), 512.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(2.0, 12), 4096.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(2.0, 47), 140737488355328.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(2.0, 66), 73786976294838206464.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(2.0, 278), 4.856672230564322677298654767E+83);

    EXPECT_FLOAT_EQ(exp_rapid_rec(5.6, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(5.6, 1), 5.6);
    EXPECT_FLOAT_EQ(exp_rapid_rec(5.6, 4), 983.4496);
    EXPECT_FLOAT_EQ(exp_rapid_rec(5.6, 17), 5238373480538.962014409966223);
    EXPECT_FLOAT_EQ(exp_rapid_rec(5.6, 99), 1.176561609770433870981098576E+74);
    EXPECT_FLOAT_EQ(exp_rapid_rec(5.6, 211), 7.373500232993888558154812999E+157);

    EXPECT_FLOAT_EQ(exp_rapid_rec(13.47, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(13.47, 1), 13.47);
    EXPECT_FLOAT_EQ(exp_rapid_rec(13.47, 8), 1083779085.3349189331756961);
    EXPECT_FLOAT_EQ(exp_rapid_rec(13.47, 34), 2.503215588003104140459358746E+38);
    EXPECT_FLOAT_EQ(exp_rapid_rec(13.47, 80), 2.235669787364866791222843352E+90);

    EXPECT_FLOAT_EQ(exp_rapid_rec(432.1, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(432.1, 1), 432.1);
    EXPECT_FLOAT_EQ(exp_rapid_rec(432.1, 6), 6508870004372800.921921);
    EXPECT_FLOAT_EQ(exp_rapid_rec(432.1, 22), 9.612887479428813190896052182E+57);
    EXPECT_FLOAT_EQ(exp_rapid_rec(432.1, 53), 4.852506373639965268640929079E+139);

    EXPECT_FLOAT_EQ(exp_rapid_rec(3557.6, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_rec(3557.6, 1), 3557.6);
    EXPECT_FLOAT_EQ(exp_rapid_rec(3557.6, 3), 45026827582.976);
    EXPECT_FLOAT_EQ(exp_rapid_rec(3557.6, 10), 3.247664547234159671755438871E+35);
    EXPECT_FLOAT_EQ(exp_rapid_rec(3557.6, 20), 1.054732501136165933764942290E+71);
}

TEST(ExpRapidIter, BasicTest) 
{
    EXPECT_FLOAT_EQ(exp_rapid_iter(2.0, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_iter(2.0, 1), 2.0);
    EXPECT_FLOAT_EQ(exp_rapid_iter(2.0, 8), 256.0);
    EXPECT_FLOAT_EQ(exp_rapid_iter(2.0, 41), 2199023255552.0);
    EXPECT_FLOAT_EQ(exp_rapid_iter(2.0, 119), 6.646139978924579364519035301E+35);
    EXPECT_FLOAT_EQ(exp_rapid_iter(2.0, 533), 2.811821121589497739256586567E+160);

    EXPECT_FLOAT_EQ(exp_rapid_iter(6.9, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_iter(6.9, 1), 6.9);
    EXPECT_FLOAT_EQ(exp_rapid_iter(6.9, 8), 5137983.74428641);
    EXPECT_FLOAT_EQ(exp_rapid_iter(6.9, 22), 2848918308552366654.279494538);
    EXPECT_FLOAT_EQ(exp_rapid_iter(6.9, 67), 1.595471605159272689397698504E+56);
    EXPECT_FLOAT_EQ(exp_rapid_iter(6.9, 100), 7.672008471691308321071066627E+83);

    EXPECT_FLOAT_EQ(exp_rapid_iter(44.44, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_iter(44.44, 1), 44.44);
    EXPECT_FLOAT_EQ(exp_rapid_iter(44.44, 5), 173328608.8485428224);
    EXPECT_FLOAT_EQ(exp_rapid_iter(44.44, 19), 2.030986118656969764655179262E+31);
    EXPECT_FLOAT_EQ(exp_rapid_iter(44.44, 55), 4.242020517848571061491720321E+90);

    EXPECT_FLOAT_EQ(exp_rapid_iter(233.33, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_iter(233.33, 1), 233.33);
    EXPECT_FLOAT_EQ(exp_rapid_iter(233.33, 9), 2049912054847614575814.925305);
    EXPECT_FLOAT_EQ(exp_rapid_iter(233.33, 17), 1.800942627441636132917616671E+40);
    EXPECT_FLOAT_EQ(exp_rapid_iter(233.33, 32), 5.957425134609974387278684542E+75);

    EXPECT_FLOAT_EQ(exp_rapid_iter(1111.567, 0), 1.0);
    EXPECT_FLOAT_EQ(exp_rapid_iter(1111.567, 1), 1111.567);
    EXPECT_FLOAT_EQ(exp_rapid_iter(1111.567, 7), 2096763825327774827473.227178);
    EXPECT_FLOAT_EQ(exp_rapid_iter(1111.567, 13), 3.955153885643567528624360154E+39);
    EXPECT_FLOAT_EQ(exp_rapid_iter(1111.567, 31), 2.654636101578362092619526221E+94);
}


int main(int argc, char **argv) 
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
