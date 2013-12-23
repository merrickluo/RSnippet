# -*- mode: snippet -*-
# Last modified: <2013-12-20 19:12:01 Friday by wongrichard>
# name: headt
# key: headt
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
<!DOCTYPE html>
<html>
  <head>
    <title>Title of the document</title>
    <script type="text/javascript" src="../angular.js"></script>
    <script type="text/javascript" src="./`(file-name-sans-extension (file-name-nondirectory (buffer-file-name)))`.js"></script>
    <link rel="stylesheet" type="text/css" href="../bootstrap.css" />
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
