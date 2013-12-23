# -*- mode: snippet -*-
# Last modified: <2013-12-23 17:46:35 Monday by wongrichard>
# name: directive
# key: d
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
directive("$0", function(){
return function(scope, element, attrs){
};
});