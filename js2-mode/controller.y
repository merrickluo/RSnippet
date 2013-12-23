# -*- mode: snippet -*-
# Last modified: <2013-12-20 23:34:17 Friday by wongrichard>
# name: controller
# key: c
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
controller("${1:AppCtrl}", function($scope){
$0
return $scope.$1 = this;
});
