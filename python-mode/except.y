# -*- mode: snippet -*-
# Last modified: <2013-10-20 00:53:32 Sunday by wongrichard>
# name: except
# key: except
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
except Exception as ex:
    print ex.__class__
