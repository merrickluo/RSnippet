# -*- mode: snippet -*-
# Last modified: <2015-12-23 11:56:35 Wednesday by wongrichard>
# name: p
# key: p
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
println!("$0")`(if (looking-back "=> .+") "," ";")`
