#!/bin/sh
# Use the exec command to start the app you want to run in this container.
# Don't let the app daemonize itself.

# `/sbin/setuser memcache` runs the given command as the user `memcache`.
# If you omit that part, the command will be run as root.

# Read more here: https://github.com/phusion/baseimage-docker#adding-additional-daemons
exec /sbin/setuser postgres  /usr/lib/postgresql/9.1/bin/postgres -D /var/lib/postgresql/9.1/main -c config_file=/etc/postgresql/9.1/main/postgresql.conf
