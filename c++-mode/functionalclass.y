# -*- mode: snippet -*-
# Last modified: <2012-03-06 16:29:45 Tuesday by richard>
# name: functionalclass
# key: fcls
# contributor: Richard Wong <chao787@gmail.com>
# --
class ${1:functionclass}{
  public:
    $1(${2:const char&} ${3:ch})
    {}
    bool operator()(...){
        return false;
    }
  private:
    $0$2 $3_;
};

