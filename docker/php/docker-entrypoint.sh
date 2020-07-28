#!/bin/sh
set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi

if [ "$1" = 'php-fpm' ] || [ "$1" = 'bin/console' ]; then
	setfacl -R -m u:www-data:rwX -m u:"$(whoami)":rwX /var/www/api/var
	setfacl -dR -m u:www-data:rwX -m u:"$(whoami)":rwX /var/www/api/var	
fi

exec docker-php-entrypoint "$@"