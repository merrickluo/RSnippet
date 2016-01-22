# -*- mode: snippet -*-
# Last modified: <2016-01-05 21:57:26 Tuesday by wongrichard>
# name: test_mod
# key: test
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
#[cfg(test)]
mod tests {
    use ${1:some_crate};
    #[test]
    fn $1(){
        $0
        assert!(true);
    }
}
