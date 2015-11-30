# -*- mode: snippet -*-
# Last modified: <2015-10-17 14:59:06 Saturday by wongrichard>
# name: entrypoint
# key: entrypoint
# expand-env: ((yas/indent-line 'fixed) (yas/wrap-around-region 'nil))
# contributor: Richard Wong <chao787@gmail.com>
# --
ROOT="\$( cd "\$(dirname "\$0")" ; pwd )"

export LC_ALL=C.UTF-8

cd "\$ROOT"

MANAGE="\$ROOT/manage.py"

if [ "\$1" = "bash" ]; then

    exec /bin/bash

elif [ "\$1" = "celery" ]; then

    echo "\$@"
    C_FORCE_ROOT=1 "\$@"

elif [ "\$1" = "run" ]; then

    (
    echo "* validate" &&
    "\$MANAGE" validate &&

    echo "* migrate" &&
    "\$MANAGE" migrate --noinput &&

    # echo "* collectstatic" &&
    # "\$MANAGE" collectstatic --noinput &&

    echo "* gunicorn"

    ) && gunicorn \
         -w \${GUNICORN_WORKERS:-1} \
         -t \${GUNICORN_TIMEOUT:-30} \
         -k \${GUNICORN_TYPE:-sync} \
         --backlog=\${GUNICORN_BACKLOG:-300} \
         --worker-connections=\${GUNICORN_CONN:-500} \
         --forwarded-allow-ips="*" \
         --bind=0.0.0.0:8000 \
         --access-logfile \${GUNICORN_LOGFILE:-/tmp/gunicorn/access.log} \
         --error-logfile \${GUNICORN_ERRORLOG:-/tmp/gunicorn/error.log} \
         --access-logformat \${GUNICORN_LOGFORMAT:-"%(h)s %(l)s %(u)s %(D)s %(p)s %(t)s %(r)s %(s)s %(b)s %(f)s %(a)s"} \
         project.wsgi:application

elif [ "\$1" = "runuwsgi" ]; then
    (
    echo "* validate" &&
    "\$MANAGE" validate &&

    echo "* migrate" &&
    "\$MANAGE" migrate --noinput &&

    echo "* collectstatic" &&
    "\$MANAGE" collectstatic --noinput &&

    echo "* uwsgi"

    ) && uwsgi --ini \${UWSGI_INI:-deploy_configs/uwsgi.ini}

elif [ "\$1" = "runserver" ]; then

    shift 1

    (
    echo "* validate" &&
    "\$MANAGE" validate &&

    echo "* migrate" &&
    "\$MANAGE" migrate --noinput &&

    echo "* runserver"

    ) && "\$MANAGE" runserver 0.0.0.0:8000

elif [ "\$1" = "help" ]; then

    "\$MANAGE" "\$@"
    echo
    echo "Extra commands from entrypoint.sh:  bash | run"

else

    "\$MANAGE" "\$@"

    if [ "\$SLEEP_BEFORE_EXIT" != "" ]; then
        echo "Requested to sleep for \$SLEEP_BEFORE_EXIT secodns before exiting"
        sleep "\$SLEEP_BEFORE_EXIT"
        echo "done sleeping"
    fi

fi
