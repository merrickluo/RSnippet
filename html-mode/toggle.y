# -*- mode: snippet -*-
# Last modified: <2013-12-31 13:23:53 Tuesday by wongrichard>
# name: toggle
# key: toggle
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
<i style="color:#F9FBFB;"
class="glyphicon glyphicon-1x5"
ng-init="like_status=true"
ng-class="{'glyphicon-heart-empty':like_status, 'glyphicon-heart':!like_status}"
ng-click="like_status=!like_status"></i>
