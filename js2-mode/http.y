# -*- mode: snippet -*-
# Last modified: <2014-01-16 10:59:58 Thursday by wongrichard>
# name: http
# key: http
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
$http({method: 'GET', url: '$0'}).
  success(function(data, status, headers, config) {
    // this callback will be called asynchronously
    // when the response is available
  }).
  error(function(data, status, headers, config) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });
