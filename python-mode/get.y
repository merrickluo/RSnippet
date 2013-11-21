# -*- mode: snippet -*-
# Last modified: <2013-11-03 11:39:18 Sunday by wongrichard>
# name: get
# key: get
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
@exception_comfort
@check_token
def post(self, album_id):
    body_dict = json.loads(self.request.body)
    user_id = self.request.headers['user_id']
