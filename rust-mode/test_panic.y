# -*- mode: snippet -*-
# Last modified: <2015-12-09 19:39:37 Wednesday by wongrichard>
# name: test_panic
# key: tp
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
#[test]
#[should_panic(expected="$1")]
fn something_should_panic() {
   $0
}
