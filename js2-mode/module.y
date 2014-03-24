# -*- mode: snippet -*-
# Last modified: <2014-02-16 12:21:03 Sunday by wongrichard>
# name: module
# key: module
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
var module;
beforeEach(function() {
                      module = angular.module("$0");
});
