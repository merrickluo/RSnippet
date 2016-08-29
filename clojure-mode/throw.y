# -*- mode: snippet -*-
# Last modified: <2016-06-15 20:47:26 Wednesday by richard>
# name: throw
# key: throw
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
(throw (ex-info "$0" {:causes #{:some-error}}))