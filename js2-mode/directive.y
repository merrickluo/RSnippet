# -*- mode: snippet -*-
# Last modified: <2014-01-02 18:13:24 Thursday by wongrichard>
# name: directive
# key: d
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
directive("$0", function(){
return {
       link:function(scope, element, attrs){
}};
});