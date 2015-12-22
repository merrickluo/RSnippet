# -*- mode: snippet -*-
# Last modified: <2015-12-21 19:36:08 Monday by wongrichard>
# name: match
# key: match
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
match $1 {
    Ok(n)  => $0n,
    Err(e) => return Err(e),
}
