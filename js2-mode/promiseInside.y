# -*- mode: snippet -*-
# Last modified: <2015-03-20 17:46:32 Friday by wongrichard>
# name: promiseInside
# key: promise
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
return apiBase.tokenPromise.then(function(){
    return $0;
})
