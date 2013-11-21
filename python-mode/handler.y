# -*- mode: snippet -*-
# Last modified: <2013-11-05 03:31:25 Tuesday by wongrichard>
# name: handler
# key: handler
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
import os
import json
import httplib
from laime.handler.handler import LaimeHandler
from laime.utils import check_token, exception_comfort, url_p_decode


class $0FollowerHandler(LaimeHandler):

    @exception_comfort
    @check_token
    def get(self, album):
        pass
