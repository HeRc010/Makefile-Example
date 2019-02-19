#include "gtest/gtest.h"

#include "ClassName.hpp"

namespace {
class ClassNameTestFixture : public ::testing::Test {
 protected:
  ClassNameTestFixture() {
  }

  ~ClassNameTestFixture() override {
  }

  void SetUp() override {
  }

  void TearDown() override {
  }
};

TEST_F(ClassNameTestFixture, TestMethodShouldReturnTrue) {
  ClassName c;
  EXPECT_EQ(c.im_a_function(), true);
}
}  // namespace
