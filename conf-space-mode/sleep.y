# -*- mode: snippet -*-
# Last modified: <2013-11-01 01:20:10 Friday by wongrichard>
# name: sleep
# key: sleep
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
script
    sleepWhileAppIsUp(){
        while pidof $1 >/dev/null; do
            sleep 1
        done
    }

    sleepWhileAppIsUp $DAEMON
end script
