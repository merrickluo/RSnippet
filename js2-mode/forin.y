# -*- mode: snippet -*-
# Last modified: <2016-07-13 14:54:51 Wednesday by richard>
# name: forin
# key: forin
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
_.forIn($0, function(value, key) {
  console.log(value, key);
});
