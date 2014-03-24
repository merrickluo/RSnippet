# -*- mode: snippet -*-
# Last modified: <2013-12-28 02:45:33 Saturday by wongrichard>
# name: headt
# key: headt
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>`(file-name-sans-extension (file-name-nondirectory (buffer-file-name)))`</title>
    <script src="/bower_components/angular/angular.js"></script>
    <script src="/bower_components/jquery/jquery.js"></script>
    <script src="/bower_components/bootstrap/dist/js/bootstrap.js"></script>
    <script src="./`(file-name-sans-extension (file-name-nondirectory (buffer-file-name)))`.js"></script>
    <link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="`(file-name-sans-extension (file-name-nondirectory (buffer-file-name)))`.css" />
  </head>
  <body>

    <div ng-app="`(file-name-sans-extension (file-name-nondirectory (buffer-file-name)))`">
      <div ng-controller="$0">
        I'm content
      </div>
      outside content
    </div>


  </body>
</html>
