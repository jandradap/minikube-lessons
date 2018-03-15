#!/bin/sh
# -*- ENCODING: UTF-8 -*-
#
# ------------------------------------------------------------------
# [Jorge Andrada Prieto] [jandradap@gmail.com]
# Title:
# Description:
# ------------------------------------------------------------------
#

#debug
# set -x
# trap read debug

sed -i "s/MODIFICAR/$HOSTNAME/g" /usr/share/nginx/html/index.html
nginx -g "daemon off;"
