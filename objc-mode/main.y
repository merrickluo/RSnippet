# -*- mode: snippet -*-
# Last modified: <2013-11-22 21:29:02 Friday by wongrichard>
# name: main
# key: main
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
int main(int argc, char* argv[])
{
  @autoreleasepool{
    NSLog(@"$0");
  }
  return 0;

}
