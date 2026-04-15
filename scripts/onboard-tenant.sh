#!/bin/bash

TENANT_NAME=$1
DB_NAME="${TENANT_NAME}_db"

echo "Creating database..."
docker exec -i wordpress-multitenant_mysql_1 mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE $DB_NAME;"

echo "Updating docker-compose..."
cat <<EOF >> docker-compose.yml

  $TENANT_NAME:
    image: wordpress:php8.2-apache
    environment:
      WORDPRESS_DB_HOST: mysql
      WORDPRESS_DB_USER: root
      WORDPRESS_DB_PASSWORD: \${MYSQL_ROOT_PASSWORD}
      WORDPRESS_DB_NAME: $DB_NAME
    volumes:
      - ./wp-content:/var/www/html/wp-content
EOF

echo "Updating nginx..."
cat <<EOF >> nginx/default.conf

server {
    listen 80;
    server_name $TENANT_NAME.local;

    location / {
        proxy_pass http://$TENANT_NAME:80;
    }
}
EOF

echo "Restarting services..."
docker-compose up -d

echo "Tenant $TENANT_NAME onboarded successfully!"