# -*- mode: snippet -*-
# Last modified: <2013-12-23 18:02:17 Monday by wongrichard>
# name: factory
# key: f
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
factory("$1", function(){
              return $0;

})