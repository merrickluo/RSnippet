# -*- mode: snippet -*-
# Last modified: <2012-03-06 14:12:03 Tuesday by richard>
# name: testclass
# key: tclass
# contributor: Richard Wong <chao787@gmail.com>
# --
// Google test class:
namespace{

class ${1:testClassName}:public ::testing::Test {
      protected:  
$0
  //  virtual void SetUp() {
  //  }

  // virtual void TearDown() {
  // }

    // privatetests;
    void test1(){
    // add test here.
    }
};

TEST_F($1, test1){
  // You can access data in the test fixture here.
  test1();
}

}
