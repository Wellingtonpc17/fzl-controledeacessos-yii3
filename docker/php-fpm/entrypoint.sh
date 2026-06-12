#!/bin/sh
set -e

# Ensure directories exist and have correct permissions
mkdir -p runtime public/assets
chmod -R 777 runtime public/assets

# Execute the original CMD (php-fpm)
exec "$@"
