// unit tests for 4 algorithms

#include <gtest/gtest.h>


//we include directly .cpp files to execute the tests
#include "algo.cpp"


TEST(ExpNaifRec, BasicTest) 
{
    EXPECT_DOUBLE_EQ(exp_naif_rec(2.0, 0), 1.0);
    EXPECT_DOUBLE_EQ(exp_naif_rec(2.0, 1), 2.0);
    EXPECT_DOUBLE_EQ(exp_naif_rec(3.0, 3), 27.0);
}

TEST(ExpNaifIter, BasicTest) 
{
    EXPECT_DOUBLE_EQ(exp_naif_iter(2.0, 0), 1.0);
    EXPECT_DOUBLE_EQ(exp_naif_iter(2.0, 1), 2.0);
    EXPECT_DOUBLE_EQ(exp_naif_iter(3.0, 3), 27.0);
}

TEST(ExpRapidRec, BasicTest) 
{
    EXPECT_DOUBLE_EQ(exp_rapid_rec(2.0, 0), 1.0);
    EXPECT_DOUBLE_EQ(exp_rapid_rec(2.0, 1), 2.0);
    EXPECT_DOUBLE_EQ(exp_rapid_rec(3.0, 3), 27.0);
}

TEST(ExpRapidIter, BasicTest) 
{
    EXPECT_DOUBLE_EQ(exp_rapid_iter(2.0, 0), 1.0);
    EXPECT_DOUBLE_EQ(exp_rapid_iter(2.0, 1), 2.0);
    EXPECT_DOUBLE_EQ(exp_rapid_iter(3.0, 3), 27.0);
}


int main(int argc, char **argv) 
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
