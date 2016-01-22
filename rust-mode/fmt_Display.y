# -*- mode: snippet -*-
# Last modified: <2016-01-05 11:55:45 Tuesday by wongrichard>
# name: fmt::Display
# key: fmt::Display
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
impl fmt::Display for $0 {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}", self)
    }
}
