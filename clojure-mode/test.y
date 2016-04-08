# -*- mode: snippet -*-
# Last modified: <2016-04-08 20:22:21 Friday by wongrichard>
# name: test
# key: test
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
(clojure.test/is (= ${1:condition}) "$0")