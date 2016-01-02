# -*- mode: snippet -*-
# Last modified: <2016-01-02 20:22:37 Saturday by wongrichard>
# name: main
# key: main
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
int main(int argc, char* argv[]) {
  @autoreleasepool{
    NSLog(@"$0");
  }
  return 0;
}
