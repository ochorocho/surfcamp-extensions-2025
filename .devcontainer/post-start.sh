#!/usr/bin/bash

sudo service mariadb start

WORKSPACE_PATH=/workspaces/surfcamp-2025

# Database credentials
USER="db"
PASSWORD="db"
HOST="127.0.0.1"
DB="db"

echo "Waiting for MySQL to be ready..."
until mysqladmin ping -h"$HOST" -u"$USER" -p"$PASSWORD" --silent; do
  sleep 2
done

# Try only to import database in case it is empty
TABLE_COUNT=$(mysql -u"$USER" -h"$HOST" -p"$PASSWORD" -N -s -e "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = '$DB';")
if [ "$TABLE_COUNT" -eq 0 ]; then
  echo "Importing database '$DB'"
  mysql -u"$USER" -h"$HOST" -p"$PASSWORD" "$DB" < data/db/db.sql
else
  echo "Skipping import. The database is not empty."
fi

sudo a2enmod rewrite
sudo chmod a+x "$(pwd)"
composer install

# Symlink DocumentRoot
sudo rm -rf /var/www/html
sudo ln -sfn $WORKSPACE_PATH/public /var/www/html

# Add composer bin directory to PATH
# so all commands are globally available
echo "export PATH=$WORKSPACE_PATH/bin:\$PATH" >> ~/.bashrc

# Dynamically set TYPO3_BASE_DOMAIN depending on the environment (local or codespaces)
if [[ -n "$CODESPACE_NAME" ]]; then
  baseDomain="export TYPO3_BASE_DOMAIN=https://$CODESPACE_NAME-3333.app.github.dev"
  echo "$baseDomain" >> ~/.bashrc
  echo "$baseDomain" | sudo tee -a /etc/apache2/envvars
else
  baseDomain="export TYPO3_BASE_DOMAIN=http://127.0.0.1:3333"
  echo "$baseDomain" >> ~/.bashrc
  echo "$baseDomain" | sudo tee -a /etc/apache2/envvars
fi

./bin/typo3 extension:setup

# Add scheduler cron
echo "* * * * * root /usr/local/bin/php $WORKSPACE_PATH/bin/typo3 scheduler:run > /proc/1/fd/1 2>/proc/1/fd/2" | sudo tee /etc/cron.d/typo3-scheduler
sudo chmod 0644 /etc/cron.d/typo3-scheduler

sudo service cron start
sudo service typo3-message-consumer start
sudo service apache2 start
sleep 5
# Ensure caches are clean and env vars will be loaded
./bin/typo3 cache:flush
